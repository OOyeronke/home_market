import 'package:flutter/material.dart';

class TExceptions implements Exception {
  final String message;

  const TExceptions([this.message = 'As unknown exception occured.']);

  factory TExceptions.fromCode(String code) {
    switch (code) {
      case 'email-already-in-use':
        return const TExceptions('Email already exists.');
      case 'Inavid-email':
        return const TExceptions('Email is not valid or badly formatted.');
      case 'weak-password':
        return const TExceptions('Please enter a stronger password.');
      case 'user-disabled':
        return const TExceptions(
            'This user has been disabled. Please contact support for help.');
      case 'user-not found':
        return const TExceptions('Invalid details please create an account.');
      case 'wrong-password':
        return const TExceptions('Incorrect password. Please try again.');
      case 'too-many-requests':
        return const TExceptions(
            'Too many requests. Service currently blocked.');
      case 'invalid-argument':
        return const TExceptions(
            'An invalid argument was provided to an Authentication method.');
      case 'invalid-password':
        return const TExceptions('Incorrect password. Please try again.');
      case 'invalid-phone-number':
        return const TExceptions('Incorrect Phone number. Please try again.');
      case 'operation-not-allowed':
        return const TExceptions(
            'The provided sign-in provider is disabled for your Firebase project.');
      case 'session-cookie-expired':
        return const TExceptions(
            'The provided Firebase cookie session is expired.');
      case 'uid-already-exists':
        return const TExceptions(
            'The provided uid is already inuse by an existing user.');
      default:
        return const TExceptions();
    }
  }
}
