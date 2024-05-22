import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/future/notification/data/models/notification_response_model.dart';

class NotificationItemWidget extends StatelessWidget {
  final Notifications? notificationModel;

  const NotificationItemWidget(this.notificationModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return notificationModel == null
        ? const SizedBox.shrink()
        : SizedBox(
            height: 80,
            child: GestureDetector(
              onTap: () => print('sss'),
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Card(
                    color: notificationModel!.readAt == 1
                        ? Colors.white
                        : HexColor('#F5F5F5'),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: CachedNetworkImageProvider(
                                    notificationModel?.url ?? '',
                                  ))),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(notificationModel!.title ?? '',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(fontWeight: FontWeight.w500)),
                                // Padding(
                                //   padding: const EdgeInsets.all(4.0),
                                //   child: Text(
                                //     notificationModel!.description ??
                                //         'description description description description description description description description',
                                //     maxLines: 2,
                                //     overflow: TextOverflow.ellipsis,
                                //     style: Theme.of(context)
                                //         .textTheme
                                //         .bodyText1!
                                //         .copyWith(color: Colors.grey),
                                //   ),
                                // ),
                                // const SizedBox(
                                //   height: 5,
                                // ),
                                Text(
                                  notificationModel?.createdAt.getShortDate() ?? '',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (notificationModel!.readAt != 1)
                    Positioned(
                      top: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.circle,
                          color: Theme.of(context).colorScheme.primary,
                          size: 18,
                        ),
                      ),
                    )
                ],
              ),
            ));
  }

}
extension ConvertStringToShortData on String? {
  String getShortDate () {
    final date = DateTime.parse(this??'');
    return '${date.day}/${date.month}/${date.year}  ${date.hour}:${date.minute}' ;
  }
}
