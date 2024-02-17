import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io';

abstract class ChatEvent {}

class SendMessage extends ChatEvent {
  final String message;
  SendMessage(this.message);
}

class SendPhoto extends ChatEvent {
  final File photo;
  SendPhoto(this.photo);
}

// States
abstract class ChatState {}

class ChatInitialState extends ChatState {}

class ChatMessageSentState extends ChatState {
  final String message;
  ChatMessageSentState(this.message);
}

class ChatPhotoSentState extends ChatState {
  final File photo;
  ChatPhotoSentState(this.photo);
}

// Cubit
class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitialState());

  void sendMessage(String message) {
    emit(ChatMessageSentState(message));
  }

  void sendPhoto(File photo) {
    emit(ChatPhotoSentState(photo));
  }
}