import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/extensions.dart';

import '../../../data/models/notification_model.dart';

class NotificationItemWidget extends StatelessWidget {
  final NotificationModel? notificationModel;


  const NotificationItemWidget(this.notificationModel,
      {Key? key})
      : super(key: key);

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
                    color: notificationModel!.readStatus == 1
                        ? Colors.white
                        : null,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      notificationModel?.url??'',
                                  width: 50,
                                  fit: BoxFit.cover,
                                  height: 100,
                                  errorWidget: (context, s, w) {
                                    return Image.asset(
                                        'assets/images/person.jpeg');
                                  },
                                ),
                              )),
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
                                  notificationModel?.createdAt?.shortMonthDateFromUTC()??'',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (notificationModel!.readStatus != 1)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.circle,
                        color: Theme.of(context).colorScheme.primary,
                        size: 18,
                      ),
                    )
                ],
              ),
            ));
  }
}
