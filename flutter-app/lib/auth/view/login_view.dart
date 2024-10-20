import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:salaty/auth/formz/formz.dart';

import '../bloc/auth_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Text(
                  'Přihlášení',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(height: 22),
                Text(
                  'Zadáním neexistujícího přihlašovacího jména vznikne nový účet. Při tvorbě nového účtu je vhodné použít co nejjednodušší uživatelské jméno bez háčků, čárek, mezer, teček...',
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),
                const _Username(),
                const SizedBox(height: 16),
                const _Password(),
                const SizedBox(height: 16),
                const _SubmitButton(),
                const SizedBox(height: 16),
                if (state.error != null)
                  Text(
                    state.error!,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                const Spacer(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Username extends StatelessWidget {
  const _Username({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (prev, curr) => prev.usernameInput != curr.usernameInput,
      builder: (context, state) {
        return TextFormField(
          initialValue: state.usernameInput.value,
          onChanged: (v) => context.read<AuthBloc>().add(OnUsernameChanged(v)),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Zadejte přihlašovací jméno',
            errorText: state.usernameInput.error?.text(),
          ),
        );
      },
    );
  }
}

class _Password extends StatefulWidget {
  const _Password({Key? key}) : super(key: key);

  @override
  State<_Password> createState() => _PasswordState();
}

class _PasswordState extends State<_Password> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (p, c) => p.passwordInput != c.passwordInput,
      builder: (context, state) {
        return TextFormField(
          obscureText: isObscured,
          initialValue: state.passwordInput.value,
          onChanged: (v) => context.read<AuthBloc>().add(OnPasswordChanged(v)),
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: 'Zadejte heslo',
              errorText: state.passwordInput.error?.text(),
              suffixIcon: IconButton(
                onPressed: () => setState(() {
                  isObscured = !isObscured;
                }),
                icon:
                    Icon(isObscured ? Icons.visibility : Icons.visibility_off),
              )),
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          onPressed: state.status == FormzSubmissionStatus.inProgress
              ? null
              : () => context.read<AuthBloc>().add(OnLoginSubmitted()),
          child: state.status == FormzSubmissionStatus.inProgress
              ? const CircularProgressIndicator()
              : const Text('Přihlásit'),
        );
      },
    );
  }
}
