import 'dart:html';


  String? get(String key) {
  final cookies = document.cookie?.split('; ') ?? [];
  for (var cookie in cookies) {
    var parts = cookie.split('=');
    var name = Uri.decodeComponent(parts[0]);
    if (key == name) {
      return parts[1].isNotEmpty ? Uri.decodeComponent(parts[1]) : null;
    }
  }
  return null;
}

void set(String key, String value,
    {DateTime? expires,
    Duration? maxAge,
    String? path,
    String? domain,
    bool? secure}) {
  if (maxAge != null) expires = DateTime.now().add(maxAge);
  var cookie = ([
    Uri.encodeComponent(key),
    '=',
    Uri.encodeComponent(value),
    expires != null ? '; expires=' + formatDate(expires) : '',
    path != null ? '; path=' + path : '',
    domain != null ? '; domain=' + domain : '',
    secure != null && secure == true ? '; secure' : ''
  ].join(''));
  document.cookie = cookie;
}

String formatDate(DateTime date) {
  date = date.toLocal();
  final weekday = _weekdays[date.weekday - 1];
  final month = _month[date.month - 1];
  return '$weekday, ${_pad(date.day)} $month ${date.year} ${_pad(date.hour)} : ${_pad(date.minute)} : ${_pad(date.second)} UTC';
}

Future<bool> removeAllCookie() async {
  final cookies = document.cookie?.split('; ') ?? [];
  for (var cookiedata in cookies) {
    var parts = cookiedata.split('=');
    var name = Uri.decodeComponent(parts[0]);
    remove(name);
  }
  return true;
}

bool remove(String key, {String? path, String? domain, bool? secure}) {
  if (get(key) != null) {
    set(key, '',
        expires: DateTime.fromMillisecondsSinceEpoch(0),
        path: path,
        domain: domain,
        secure: secure);
    return true;
  }
  return false;
}

 List<String> _weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
 List<String> _month = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec'
];

String _pad(int number) => '$number'.padLeft(2, '0');

