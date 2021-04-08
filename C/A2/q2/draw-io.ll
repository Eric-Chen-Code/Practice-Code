; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"INVALID INPUT: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@READ_INT_FAIL = external constant i32, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"triangle\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"xbox\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"zigzag\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@INVALID_SYMBOL = external constant i32, align 4

; Function Attrs: noinline nounwind optnone
define void @invalid(i32 %cmd) #0 {
entry:
  %cmd.addr = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %0 = load i32, i32* %cmd.addr, align 4
  call void @print_symbol(i32 %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #1

declare void @print_symbol(i32) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: noinline nounwind optnone
define i32 @get_int(i32 %cmd) #0 {
entry:
  %cmd.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  %call = call i32 @read_int()
  store i32 %call, i32* %i, align 4
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @READ_INT_FAIL, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %cmd.addr, align 4
  call void @invalid(i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %i, align 4
  ret i32 %3
}

declare i32 @read_int() #1

; Function Attrs: noinline nounwind optnone
define void @draw_input() #0 {
entry:
  %TRIANGLE = alloca i32, align 4
  %N = alloca i32, align 4
  %BOX = alloca i32, align 4
  %XBOX = alloca i32, align 4
  %ZIGZAG = alloca i32, align 4
  %QUIT = alloca i32, align 4
  %cmd = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %call = call i32 @lookup_symbol(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  store i32 %call, i32* %TRIANGLE, align 4
  %call1 = call i32 @lookup_symbol(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 %call1, i32* %N, align 4
  %call2 = call i32 @lookup_symbol(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  store i32 %call2, i32* %BOX, align 4
  %call3 = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  store i32 %call3, i32* %XBOX, align 4
  %call4 = call i32 @lookup_symbol(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call4, i32* %ZIGZAG, align 4
  %call5 = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  store i32 %call5, i32* %QUIT, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end37
  %call6 = call i32 @read_symbol()
  store i32 %call6, i32* %cmd, align 4
  %0 = load i32, i32* %cmd, align 4
  %1 = load i32, i32* @INVALID_SYMBOL, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %2 = load i32, i32* %cmd, align 4
  %3 = load i32, i32* %QUIT, align 4
  %cmp7 = icmp eq i32 %2, %3
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %cmd, align 4
  %5 = load i32, i32* %N, align 4
  %cmp8 = icmp eq i32 %4, %5
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %6 = load i32, i32* %cmd, align 4
  %call10 = call i32 @get_int(i32 %6)
  call void @draw_n(i32 %call10)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end37

if.else:                                          ; preds = %if.end
  %7 = load i32, i32* %cmd, align 4
  %8 = load i32, i32* %TRIANGLE, align 4
  %cmp12 = icmp eq i32 %7, %8
  br i1 %cmp12, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.else
  %9 = load i32, i32* %cmd, align 4
  %call14 = call i32 @get_int(i32 %9)
  call void @draw_triangle(i32 %call14)
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end36

if.else16:                                        ; preds = %if.else
  %10 = load i32, i32* %cmd, align 4
  %11 = load i32, i32* %BOX, align 4
  %cmp17 = icmp eq i32 %10, %11
  br i1 %cmp17, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else16
  %12 = load i32, i32* %cmd, align 4
  %call19 = call i32 @get_int(i32 %12)
  call void @draw_box(i32 %call19)
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end35

if.else21:                                        ; preds = %if.else16
  %13 = load i32, i32* %cmd, align 4
  %14 = load i32, i32* %XBOX, align 4
  %cmp22 = icmp eq i32 %13, %14
  br i1 %cmp22, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.else21
  %15 = load i32, i32* %cmd, align 4
  %call24 = call i32 @get_int(i32 %15)
  call void @draw_xbox(i32 %call24)
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end34

if.else26:                                        ; preds = %if.else21
  %16 = load i32, i32* %cmd, align 4
  %17 = load i32, i32* %ZIGZAG, align 4
  %cmp27 = icmp eq i32 %16, %17
  br i1 %cmp27, label %if.then28, label %if.else32

if.then28:                                        ; preds = %if.else26
  %18 = load i32, i32* %cmd, align 4
  %call29 = call i32 @get_int(i32 %18)
  store i32 %call29, i32* %w, align 4
  %19 = load i32, i32* %cmd, align 4
  %call30 = call i32 @get_int(i32 %19)
  store i32 %call30, i32* %h, align 4
  %20 = load i32, i32* %w, align 4
  %21 = load i32, i32* %h, align 4
  call void @draw_zigzag(i32 %20, i32 %21)
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end33

if.else32:                                        ; preds = %if.else26
  %22 = load i32, i32* %cmd, align 4
  call void @invalid(i32 %22)
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then28
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then23
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then18
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then13
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then9
  br label %while.body

while.end:                                        ; preds = %if.then
  ret void
}

declare i32 @lookup_symbol(i8*) #1

declare i32 @read_symbol() #1

declare void @draw_n(i32) #1

declare void @draw_triangle(i32) #1

declare void @draw_box(i32) #1

declare void @draw_xbox(i32) #1

declare void @draw_zigzag(i32, i32) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
