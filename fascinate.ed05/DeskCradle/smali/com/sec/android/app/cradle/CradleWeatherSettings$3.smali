.class Lcom/sec/android/app/cradle/CradleWeatherSettings$3;
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
    .line 346
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v11, "cradle_weather_city_location"

    const-string v10, "cradle_weather_city"

    .line 348
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    iget-object v5, v5, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 349
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v5}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$000(Lcom/sec/android/app/cradle/CradleWeatherSettings;)[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, p2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, selectCity:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    const/4 v2, 0x0

    .line 356
    .local v2, searchintent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #searchintent:Landroid/content/Intent;
    const-string v5, "com.sec.android.widgetapp.infoalarm.activity.settings.SearchSelectCityA"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .restart local v2       #searchintent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    const/4 v6, 0x4

    invoke-virtual {v5, v2, v6}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 373
    .end local v2           #searchintent:Landroid/content/Intent;
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 375
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v5}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 376
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v5}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    .line 377
    .local v1, item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    invoke-static {v1, v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->access$302(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v5}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 380
    .end local v1           #item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->removeDialog(I)V

    .line 381
    return-void

    .line 358
    :cond_1
    if-nez p2, :cond_2

    .line 359
    const/4 v3, 0x0

    .line 361
    const-string v5, "cradle_weather_city"

    invoke-interface {v0, v10, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    const-string v5, "cradle_weather_city_location"

    invoke-interface {v0, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 363
    const-string v5, "cradle_weather_display"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 367
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$3;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v5}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$100(Lcom/sec/android/app/cradle/CradleWeatherSettings;)[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, p2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, selectLocation:Ljava/lang/String;
    const-string v5, "cradle_weather_city_changed"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 369
    const-string v5, "cradle_weather_city"

    invoke-interface {v0, v10, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    const-string v5, "cradle_weather_city_location"

    invoke-interface {v0, v11, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 371
    const-string v5, "cradle_weather_display"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
