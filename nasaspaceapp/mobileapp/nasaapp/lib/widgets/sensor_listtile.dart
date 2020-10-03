import 'package:flutter/material.dart';

class SensorListTile extends StatelessWidget {
  final String id;
  final String status;
  final List<String> sensorStats;

  SensorListTile(this.id, this.status, this.sensorStats);

  Color statusColor(String status) {
    if (status == "CRITICAL") {
      return Colors.red;
    } else if (status == "OK") {
      return Colors.green;
    } else {
      return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: statusColor(status),
        child: Text(
          id,
          style: TextStyle(color: Colors.white),
        ),
      ),
      title: Text(
        "Status: $status",
        style: TextStyle(
          color: statusColor(status),
          fontSize: 20,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hum:${sensorStats[0]}",
            style: TextStyle(
              color: statusColor(sensorStats[0]),
            ),
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            "Temp:${sensorStats[1]}",
            style: TextStyle(
              color: statusColor(sensorStats[1]),
            ),
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            "Fire:${sensorStats[2]}",
            style: TextStyle(
              color: statusColor(sensorStats[2]),
            ),
          ),
        ],
      ),
      trailing: IconButton(
        icon: Icon(Icons.refresh),
        onPressed: () {},
      ),
    );
  }
}
