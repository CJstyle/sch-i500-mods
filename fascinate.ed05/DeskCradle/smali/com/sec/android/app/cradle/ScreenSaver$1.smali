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
    .line 270
    iput-object p1, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v9, "ScreenSaver"

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, action:Ljava/lang/String;
    const-string v6, "ScreenSaver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent Action received :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 275
    const-string v6, "time-zone"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, tz:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    new-instance v7, Landroid/text/format/Time;

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/sec/android/app/cradle/ScreenSaver;->access$002(Lcom/sec/android/app/cradle/ScreenSaver;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 277
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-virtual {v6}, Lcom/sec/android/app/cradle/ScreenSaver;->onTimeChanged()V

    .line 280
    .end local v5           #tz:Ljava/lang/String;
    :cond_0
    const-string v6, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 281
    const-string v6, "test"

    const-string v7, "date changed 22222~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v6}, Lcom/sec/android/app/cradle/ScreenSaver;->access$100(Lcom/sec/android/app/cradle/ScreenSaver;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 283
    .local v3, time:J
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v6}, Lcom/sec/android/app/cradle/ScreenSaver;->access$200(Lcom/sec/android/app/cradle/ScreenSaver;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "EEEE dd.MM.yyyy"

    invoke-static {v7, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-virtual {v6}, Lcom/sec/android/app/cradle/ScreenSaver;->onTimeChanged()V

    .line 286
    .end local v3           #time:J
    :cond_1
    const-string v6, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 287
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-virtual {v6}, Lcom/sec/android/app/cradle/ScreenSaver;->onTimeChanged()V

    .line 290
    :cond_2
    const-string v6, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 291
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v6}, Lcom/sec/android/app/cradle/ScreenSaver;->access$300(Lcom/sec/android/app/cradle/ScreenSaver;)V

    .line 293
    :cond_3
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 294
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v6}, Lcom/sec/android/app/cradle/ScreenSaver;->access$300(Lcom/sec/android/app/cradle/ScreenSaver;)V

    .line 296
    :cond_4
    const-string v6, "android.intent.extra.DOCK_STATE"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 297
    .local v1, dockState:I
    if-nez v1, :cond_7

    .line 298
    const-string v6, "ScreenSaver"

    const-string v6, "Closing DeskHome as it\'s undocked_from screen saver...."

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    const-string v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/cradle/ScreenSaver;->access$402(Lcom/sec/android/app/cradle/ScreenSaver;Landroid/os/IPowerManager;)Landroid/os/IPowerManager;

    .line 302
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v6}, Lcom/sec/android/app/cradle/ScreenSaver;->access$400(Lcom/sec/android/app/cradle/ScreenSaver;)Landroid/os/IPowerManager;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 303
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v6}, Lcom/sec/android/app/cradle/ScreenSaver;->access$400(Lcom/sec/android/app/cradle/ScreenSaver;)Landroid/os/IPowerManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 306
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v6}, Lcom/sec/android/app/cradle/ScreenSaver;->access$400(Lcom/sec/android/app/cradle/ScreenSaver;)Landroid/os/IPowerManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v7}, Lcom/sec/android/app/cradle/ScreenSaver;->access$500(Lcom/sec/android/app/cradle/ScreenSaver;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 310
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-virtual {v6}, Lcom/sec/android/app/cradle/ScreenSaver;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    iget-object v8, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v8}, Lcom/sec/android/app/cradle/ScreenSaver;->access$500(Lcom/sec/android/app/cradle/ScreenSaver;)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_6
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/cradle/ScreenSaver$1;->this$0:Lcom/sec/android/app/cradle/ScreenSaver;

    invoke-static {v6}, Lcom/sec/android/app/cradle/ScreenSaver;->access$300(Lcom/sec/android/app/cradle/ScreenSaver;)V

    .line 319
    :cond_7
    return-void

    .line 313
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 314
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
