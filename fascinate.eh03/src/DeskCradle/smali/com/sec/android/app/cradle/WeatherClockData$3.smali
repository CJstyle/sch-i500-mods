.class Lcom/sec/android/app/cradle/WeatherClockData$3;
.super Ljava/lang/Object;
.source "WeatherClockData.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/WeatherClockData;->showLoadingWeatherProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/WeatherClockData;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/WeatherClockData;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockData$3;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData$3;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-static {v0}, Lcom/sec/android/app/cradle/WeatherClockData;->access$200(Lcom/sec/android/app/cradle/WeatherClockData;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData$3;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-static {v1}, Lcom/sec/android/app/cradle/WeatherClockData;->access$100(Lcom/sec/android/app/cradle/WeatherClockData;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData$3;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-static {v0}, Lcom/sec/android/app/cradle/WeatherClockData;->access$200(Lcom/sec/android/app/cradle/WeatherClockData;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData$3;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-static {v1}, Lcom/sec/android/app/cradle/WeatherClockData;->access$600(Lcom/sec/android/app/cradle/WeatherClockData;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData$3;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-static {v0}, Lcom/sec/android/app/cradle/WeatherClockData;->access$700(Lcom/sec/android/app/cradle/WeatherClockData;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData$3;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-static {v0}, Lcom/sec/android/app/cradle/WeatherClockData;->access$700(Lcom/sec/android/app/cradle/WeatherClockData;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData$3;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-static {v0, v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$102(Lcom/sec/android/app/cradle/WeatherClockData;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData$3;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-static {v0, v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$602(Lcom/sec/android/app/cradle/WeatherClockData;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData$3;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-static {v0, v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$702(Lcom/sec/android/app/cradle/WeatherClockData;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 500
    return-void
.end method
