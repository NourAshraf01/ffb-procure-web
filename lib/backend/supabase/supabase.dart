import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://xheevcowfsiqoblrojtv.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhoZWV2Y293ZnNpcW9ibHJvanR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTUwODA0NDEsImV4cCI6MjAzMDY1NjQ0MX0.VtLhKLxBQQdsCrGCX7d4QxD00aLz7OAWGN49oxNwOnc';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
