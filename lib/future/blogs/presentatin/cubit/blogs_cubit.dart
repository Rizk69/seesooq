import 'package:flutter_bloc/flutter_bloc.dart';

import 'blogs_state.dart';

class BlogsCubit extends Cubit<BlogsState> {
  BlogsCubit() : super(const BlogsState());
}
