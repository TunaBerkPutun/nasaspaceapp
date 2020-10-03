import 'package:flutter/material.dart';

class DroneListTile extends StatelessWidget {
  final String id;
  final List droneInfo;
  final String status;

  DroneListTile(this.id, this.status, this.droneInfo);

  Color statusColor(String status) {
    if (status == "SCANNING") {
      return Colors.blue;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: statusColor(status),
          child: Text(
            "#$id",
            style: TextStyle(color: Colors.white),
          ),
        ),
        title: Text(
          droneInfo[2],
          style: TextStyle(
            color: statusColor(status),
            fontSize: 28,
          ),
        ),
        subtitle: Row(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Battery:${droneInfo[0]}%",
                    style: TextStyle(
                      color: statusColor(status),
                    ),
                  ),
                  Text(
                    "Scan:${droneInfo[1]}%",
                    style: TextStyle(
                      color: statusColor(status),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        trailing: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: 75,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Status:",
                style: TextStyle(
                  color: statusColor(status),
                  fontSize: 14,
                ),
              ),
              Text(
                "$status",
                style: TextStyle(
                  color: statusColor(status),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
