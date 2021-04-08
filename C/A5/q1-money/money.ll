; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.money = type { %struct.banknotes, %struct.coinage }
%struct.banknotes = type { i32, i32, i32, i32, i32 }
%struct.coinage = type { i32, i32, i32, i32, i32, i32 }
%struct.amount = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"money_valid(m)\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"/u1/dtompkins/.seashell/projects/_A5/q1/_money.c\00", align 1
@__PRETTY_FUNCTION__.money_to_amount = private unnamed_addr constant [44 x i8] c"struct amount money_to_amount(struct money)\00", align 1
@__PRETTY_FUNCTION__.money_print = private unnamed_addr constant [31 x i8] c"void money_print(struct money)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"money version = 1.1\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define zeroext i1 @money_valid(%struct.money* byval align 8 %m) #0 {
entry:
  %byval-temp = alloca %struct.coinage, align 8
  %bills = getelementptr inbounds %struct.money, %struct.money* %m, i32 0, i32 0
  %call = call zeroext i1 @banknotes_valid(%struct.banknotes* byval align 8 %bills)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %coins = getelementptr inbounds %struct.money, %struct.money* %m, i32 0, i32 1
  %0 = bitcast %struct.coinage* %byval-temp to i8*
  %1 = bitcast %struct.coinage* %coins to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 4 %1, i64 24, i1 false)
  %call1 = call zeroext i1 @coinage_valid(%struct.coinage* byval align 8 %byval-temp)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %call1, %land.rhs ]
  ret i1 %2
}

declare zeroext i1 @banknotes_valid(%struct.banknotes* byval align 8) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

declare zeroext i1 @coinage_valid(%struct.coinage* byval align 8) #1

; Function Attrs: noinline nounwind optnone
define i64 @money_to_amount(%struct.money* byval align 8 %m) #0 {
entry:
  %retval = alloca %struct.amount, align 4
  %cents = alloca i32, align 4
  %byval-temp = alloca %struct.coinage, align 8
  %call = call zeroext i1 @money_valid(%struct.money* byval align 8 %m)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.money_to_amount, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %bills = getelementptr inbounds %struct.money, %struct.money* %m, i32 0, i32 0
  %call1 = call i32 @banknotes_to_dollars(%struct.banknotes* byval align 8 %bills)
  %mul = mul nsw i32 %call1, 100
  %coins = getelementptr inbounds %struct.money, %struct.money* %m, i32 0, i32 1
  %0 = bitcast %struct.coinage* %byval-temp to i8*
  %1 = bitcast %struct.coinage* %coins to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 4 %1, i64 24, i1 false)
  %call2 = call i32 @coinage_to_cents(%struct.coinage* byval align 8 %byval-temp)
  %add = add nsw i32 %mul, %call2
  store i32 %add, i32* %cents, align 4
  %dollars = getelementptr inbounds %struct.amount, %struct.amount* %retval, i32 0, i32 0
  %2 = load i32, i32* %cents, align 4
  %div = sdiv i32 %2, 100
  store i32 %div, i32* %dollars, align 4
  %cents3 = getelementptr inbounds %struct.amount, %struct.amount* %retval, i32 0, i32 1
  %3 = load i32, i32* %cents, align 4
  %rem = srem i32 %3, 100
  store i32 %rem, i32* %cents3, align 4
  %4 = bitcast %struct.amount* %retval to i64*
  %5 = load i64, i64* %4, align 4
  ret i64 %5
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare i32 @banknotes_to_dollars(%struct.banknotes* byval align 8) #1

declare i32 @coinage_to_cents(%struct.coinage* byval align 8) #1

; Function Attrs: noinline nounwind optnone
define void @money_print(%struct.money* byval align 8 %m) #0 {
entry:
  %byval-temp = alloca %struct.coinage, align 8
  %call = call zeroext i1 @money_valid(%struct.money* byval align 8 %m)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.money_print, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %bills = getelementptr inbounds %struct.money, %struct.money* %m, i32 0, i32 0
  call void @banknotes_print(%struct.banknotes* byval align 8 %bills)
  %coins = getelementptr inbounds %struct.money, %struct.money* %m, i32 0, i32 1
  %0 = bitcast %struct.coinage* %byval-temp to i8*
  %1 = bitcast %struct.coinage* %coins to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 4 %1, i64 24, i1 false)
  call void @coinage_print(%struct.coinage* byval align 8 %byval-temp)
  ret void
}

declare void @banknotes_print(%struct.banknotes* byval align 8) #1

declare void @coinage_print(%struct.coinage* byval align 8) #1

; Function Attrs: noinline nounwind optnone
define void @money_version() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
