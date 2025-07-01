/*
# Why Debugging
- IDE vs Code Editor
- ডিবাগিং বিষয়টি শুধু মাত্র Bug খুজে বের করার মধ্যে সীমাবদ্ধ নয় ।
- Beginning to Production, Fixing to Understanding প্রত্যেকটা যায়গায় এটা দরকার ।
- প্রোগ্রামের কোন লাইনে কি হচ্ছে, কি ঘটছে, কি আউটপুট-ইনপুট আসছে-যাচ্ছে সেগুলো
- নিজে চোখে দেখার জন্য Debugging এর বিকল্প নেই
- জটিল বিজনেস লজিক কোথায থেকে কোথায গেলো?
- আপনি প্রোগ্রামের এক্সিকিউশন Step By Step থামিয়ে লজিক ডিস্কাভার করতে পারেন
- অনেক সময় ১টা ছোট্ট ভুলে অনেক গুলো পরিচিত অপরিচিত Error এসে বসে থাকে
- এতে সময় এবং এফোর্ট ২টাই লস হয়।
- আসলেই ভুলটা কোন লাইনের কোন অংশে, ডিবাগিং করে নিমেষেই ভুলটা বের করতে পারেন।
- এবার আসুন Large Function গুলো ভেঙ্গে ভেঙ্গে বুঝে বুঝে লিখতে Debugging process is awesome
- Step By Step যতটুকু লিখেছেন ততটুকুই চালিয়ে দেখতে পারেন
- অন্যের কোড বুঝতেও ডিবাগিং হেল্প-ফুল
- কোড টেস্ট করতে, পারফর্মেন্স বাড়াতে, কোড সুন্দর করতে
- সব জায়গাইতেই ডিবাগিং এর টেকনিক গুলোআপনাকে অনেক এগিয়ে নিয়ে যাবে

# Debugging Break-Point
- Step Over (Skip & Go to Next Line)
- Threads (Show the Current Processing)
- Console (Print Output)
- Evaluation (Specific Line or Statement Analysis)
- Stop (Finish)
- Play, Pause, Restart
- Step Into (Dive Inside Function)
- Step Out (Skip Inside Function)
- Breakpoint Mute (Debug won't Catch)

# print()/ logger
- logger.e => error
- logger.d => dynamic
- logger.i => info
- logger.w => warning
*/

import 'package:logger/logger.dart';

void addTwoNumber() {
  var x = 100;
  var y = 200;
  var z = 300;
  print(x + y + z);
}

void minusTwoNumber() {
  var x = 100;
  var y = 200;
  var z = 300;
  print(x - y - z);
}

final logger = Logger();

void main() {
  var a = 10;
  var b = 20;
  var c = 30;
  logger.i(a);
  logger.e(a);
  logger.d(a);
  logger.w(a);
  var d = 40;
  addTwoNumber();
  minusTwoNumber();
  var e = 50;
  var sum = a + b + c + d + e;
  print(sum);
}
