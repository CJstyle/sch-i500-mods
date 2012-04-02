.class Lcom/sec/android/app/cradle/CradleWeatherSettings$4;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleWeatherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v9, "cradle_weather_city_location"

    const-string v8, "cradle_weather_city"

    .line 352
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    iget-object v4, v4, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 354
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 355
    .local v1, isCitySelected:Z
    const/4 v3, 0x0

    .line 359
    .local v3, selectCity:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 360
    const/4 v1, 0x1

    .line 361
    const-string v4, "cradle_weather_city"

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    const-string v4, "cradle_weather_city_location"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 363
    const-string v4, "cradle_weather_display"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 374
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v1, :cond_1

    .line 377
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    .line 378
    .local v2, item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    invoke-static {v2, v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->access$302(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 382
    .end local v2           #item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->removeDialog(I)V

    .line 383
    return-void

    .line 364
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$000(Lcom/sec/android/app/cradle/CradleWeatherSettings;)[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-ge p2, v4, :cond_0

    .line 365
    const/4 v1, 0x1

    .line 366
    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$000(Lcom/sec/android/app/cradle/CradleWeatherSettings;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    const-string v4, "cradle_weather_city_changed"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 370
    const-string v4, "cradle_weather_city"

    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 371
    const-string v4, "cradle_weather_city_location"

    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$4;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$100(Lcom/sec/android/app/cradle/CradleWeatherSettings;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 372
    const-string v4, "cradle_weather_display"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
