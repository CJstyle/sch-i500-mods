.class Lcom/sec/android/app/cradle/ScreenSaver$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/ScreenSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/ScreenSaver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/ScreenSaver;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v8, "ScreenSaver"

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, action:Ljava/lang/String;
    const-string v5, "ScreenSaver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent Action received :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    const-string v5, "time-zone"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, tz:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    new-instance v6, Landroid/text/format/Time;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/sec/android/app/cradle/ScreenSaver;->access$002(Lcom/sec/android/app/cradle/ScreenSaver;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 321
    iget-object v5, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-virtual {v5}, Lcom/sec/android/app/cradle/ScreenSaver;->onTimeChanged()V

    .line 324
    .end local v4           #tz:Ljava/lang/String;
    :cond_0
    const-string v5, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 325
    const-string v5, "test"

    const-string v6, "date changed 22222~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v5, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v5}, Lcom/sec/android/app/cradle/ScreenSaver;->access$100(Lcom/sec/android/app/cradle/ScreenSaver;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 327
    .local v2, time:J
    iget-object v5, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v5}, Lcom/sec/android/app/cradle/ScreenSaver;->access$200(Lcom/sec/android/app/cradle/ScreenSaver;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "EEEE dd.MM.yyyy"

    invoke-static {v6, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v5, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-virtual {v5}, Lcom/sec/android/app/cradle/ScreenSaver;->onTimeChanged()V

    .line 330
    .end local v2           #time:J
    :cond_1
    const-string v5, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 331
    iget-object v5, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-virtual {v5}, Lcom/sec/android/app/cradle/ScreenSaver;->onTimeChanged()V

    .line 334
    :cond_2
    const-string v5, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 335
    iget-object v5, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v5}, Lcom/sec/android/app/cradle/ScreenSaver;->access$300(Lcom/sec/android/app/cradle/ScreenSaver;)V

    .line 337
    :cond_3
    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 338
    iget-object v5, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v5}, Lcom/sec/android/app/cradle/ScreenSaver;->access$300(Lcom/sec/android/app/cradle/ScreenSaver;)V

    .line 340
    :cond_4
    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 341
    .local v1, dockState:I
    if-nez v1, :cond_5

    .line 342
    const-string v5, "ScreenSaver"

    const-string v5, "Closing DeskHome as it\'s undocked_from screen saver...."

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v5, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v5}, Lcom/sec/android/app/cradle/ScreenSaver;->access$400(Lcom/sec/android/app/cradle/ScreenSaver;)V

    .line 345
    iget-object v5, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v5}, Lcom/sec/android/app/cradle/ScreenSaver;->access$300(Lcom/sec/android/app/cradle/ScreenSaver;)V

    .line 347
    :cond_5
    return-void
.end method
