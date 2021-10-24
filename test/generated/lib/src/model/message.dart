//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message.g.dart';

/// Message
///
/// Properties:
/// * [body] 
abstract class Message implements Built<Message, MessageBuilder> {
    @BuiltValueField(wireName: r'body')
    String get body;

    Message._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MessageBuilder b) => b;

    factory Message([void updates(MessageBuilder b)]) = _$Message;

    @BuiltValueSerializer(custom: true)
    static Serializer<Message> get serializer => _$MessageSerializer();
}

class _$MessageSerializer implements StructuredSerializer<Message> {
    @override
    final Iterable<Type> types = const [Message, _$Message];

    @override
    final String wireName = r'Message';

    @override
    Iterable<Object?> serialize(Serializers serializers, Message object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'body')
            ..add(serializers.serialize(object.body,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    Message deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MessageBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'body':
                    result.body = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

