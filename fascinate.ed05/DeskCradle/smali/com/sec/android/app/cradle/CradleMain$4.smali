.class Lcom/sec/android/app/cradle/CradleMain$4;
.super Ljava/lang/Object;
.source "CradleMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleMain;->startGetDefaultCityWeather()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1846
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xa4cb80

    const-string v3, "CradleMain"

    .line 1847
    const-string v1, "CradleMain"

    const-string v1, "onData Runnable"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const-string v1, "CradleMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[jangth]mWeather icon is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleMain;->access$600(Lcom/sec/android/app/cradle/CradleMain;)Lcom/sec/android/app/cradle/WeatherClockData;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/cradle/CradleMain;->access$702(Z)Z

    .line 1850
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1851
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_saved_weather_icon"

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleMain;->access$600(Lcom/sec/android/app/cradle/CradleMain;)Lcom/sec/android/app/cradle/WeatherClockData;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherIcon:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1852
    const-string v1, "cradle_saved_weather_temperature"

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleMain;->access$600(Lcom/sec/android/app/cradle/CradleMain;)Lcom/sec/android/app/cradle/WeatherClockData;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherHighTemp:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1853
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v1}, Lcom/sec/android/app/cradle/CradleMain;->access$600(Lcom/sec/android/app/cradle/CradleMain;)Lcom/sec/android/app/cradle/WeatherClockData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/cradle/WeatherClockData;->mUnitString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1854
    const-string v1, "cradle_saved_weather_unit"

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleMain;->access$600(Lcom/sec/android/app/cradle/CradleMain;)Lcom/sec/android/app/cradle/WeatherClockData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/cradle/WeatherClockData;->mUnitString:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1856
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v1}, Lcom/sec/android/app/cradle/CradleMain;->access$200(Lcom/sec/android/app/cradle/CradleMain;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 1857
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleMain;->access$200(Lcom/sec/android/app/cradle/CradleMain;)Landroid/text/format/Time;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/cradle/CradleMain;->access$802(Lcom/sec/android/app/cradle/CradleMain;J)J

    .line 1861
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v1}, Lcom/sec/android/app/cradle/CradleMain;->access$900(Lcom/sec/android/app/cradle/CradleMain;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1875
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/cradle/CradleMain;->access$814(Lcom/sec/android/app/cradle/CradleMain;J)J

    .line 1878
    :goto_0
    const-string v1, "cradle_weather_refresh_time"

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleMain;->access$800(Lcom/sec/android/app/cradle/CradleMain;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1879
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1881
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleMain;->access$600(Lcom/sec/android/app/cradle/CradleMain;)Lcom/sec/android/app/cradle/WeatherClockData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/cradle/CradleMain;->access$1000(Lcom/sec/android/app/cradle/CradleMain;Lcom/sec/android/app/cradle/WeatherClockData;)V

    .line 1882
    return-void

    .line 1863
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/cradle/CradleMain;->access$814(Lcom/sec/android/app/cradle/CradleMain;J)J

    goto :goto_0

    .line 1866
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    const-wide/32 v2, 0x1499700

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/cradle/CradleMain;->access$814(Lcom/sec/android/app/cradle/CradleMain;J)J

    goto :goto_0

    .line 1869
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    const-wide/32 v2, 0x2932e00

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/cradle/CradleMain;->access$814(Lcom/sec/android/app/cradle/CradleMain;J)J

    goto :goto_0

    .line 1872
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleMain$4;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    const-wide/32 v2, 0x5265c00

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/cradle/CradleMain;->access$814(Lcom/sec/android/app/cradle/CradleMain;J)J

    goto :goto_0

    .line 1861
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
