; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.banknotes = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"banknotes_valid(bills)\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"/u1/dtompkins/.seashell/projects/_A5/q1/_banknotes.c\00", align 1
@__PRETTY_FUNCTION__.banknotes_to_dollars = private unnamed_addr constant [43 x i8] c"int banknotes_to_dollars(struct banknotes)\00", align 1
@__PRETTY_FUNCTION__.banknotes_print = private unnamed_addr constant [39 x i8] c"void banknotes_print(struct banknotes)\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"$100.00 = %3d, $50.00 = %3d, $20.00 = %3d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c" $10.00 = %3d,  $5.00 = %3d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"banknotes version = 1.1\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define zeroext i1 @banknotes_valid(%struct.banknotes* byval align 8 %bills) #0 {
entry:
  %hundreds = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 0
  %0 = load i32, i32* %hundreds, align 8
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %fifties = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 1
  %1 = load i32, i32* %fifties, align 4
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %twenties = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 2
  %2 = load i32, i32* %twenties, align 8
  %cmp3 = icmp sge i32 %2, 0
  br i1 %cmp3, label %land.lhs.true4, label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %tens = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 3
  %3 = load i32, i32* %tens, align 4
  %cmp5 = icmp sge i32 %3, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  %fives = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 4
  %4 = load i32, i32* %fives, align 8
  %cmp6 = icmp sge i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp6, %land.rhs ]
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone
define i32 @banknotes_to_dollars(%struct.banknotes* byval align 8 %bills) #0 {
entry:
  %call = call zeroext i1 @banknotes_valid(%struct.banknotes* byval align 8 %bills)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.banknotes_to_dollars, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %if.then
  %hundreds = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 0
  %0 = load i32, i32* %hundreds, align 8
  %mul = mul nsw i32 %0, 100
  %fifties = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 1
  %1 = load i32, i32* %fifties, align 4
  %mul1 = mul nsw i32 %1, 50
  %add = add nsw i32 %mul, %mul1
  %twenties = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 2
  %2 = load i32, i32* %twenties, align 8
  %mul2 = mul nsw i32 %2, 20
  %add3 = add nsw i32 %add, %mul2
  %tens = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 3
  %3 = load i32, i32* %tens, align 4
  %mul4 = mul nsw i32 %3, 10
  %add5 = add nsw i32 %add3, %mul4
  %fives = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 4
  %4 = load i32, i32* %fives, align 8
  %mul6 = mul nsw i32 %4, 5
  %add7 = add nsw i32 %add5, %mul6
  ret i32 %add7
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone
define void @banknotes_print(%struct.banknotes* byval align 8 %bills) #0 {
entry:
  %call = call zeroext i1 @banknotes_valid(%struct.banknotes* byval align 8 %bills)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i32 0, i32 0), i32 23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.banknotes_print, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %if.then
  %hundreds = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 0
  %0 = load i32, i32* %hundreds, align 8
  %fifties = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 1
  %1 = load i32, i32* %fifties, align 4
  %twenties = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 2
  %2 = load i32, i32* %twenties, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i32 %0, i32 %1, i32 %2)
  %tens = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 3
  %3 = load i32, i32* %tens, align 4
  %fives = getelementptr inbounds %struct.banknotes, %struct.banknotes* %bills, i32 0, i32 4
  %4 = load i32, i32* %fives, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 %3, i32 %4)
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone
define void @banknotes_version() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
