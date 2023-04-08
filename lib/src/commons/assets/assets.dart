enum Assets {
  logo(path: '${_basePath}logo-icon.png'),
  bgBlur1(path: '${_basePath}bg-blur-1.png'),
  bgBlur2(path: '${_basePath}bg-blur-2.png'),
  bgBlur3(path: '${_basePath}bg-blur-3.png');

  const Assets({
    required this.path,
  });

  final String path;
}

const String _basePath = 'assets/images/';
