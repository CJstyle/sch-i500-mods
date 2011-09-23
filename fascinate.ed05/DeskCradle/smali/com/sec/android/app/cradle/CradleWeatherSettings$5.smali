.class Lcom/sec/android/app/cradle/CradleWeatherSettings$5;
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
    .line 407
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 409
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    iget-object v2, v2, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 410
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cradle_weather_refresh_time_index"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 413
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    .line 414
    .local v1, item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    const v3, 0x7f080021

    invoke-virtual {v2, v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$400()[I

    move-result-object v5

    aget v5, v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->access$302(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;Ljava/lang/String;)Ljava/lang/String;

    .line 415
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 417
    .end local v1           #item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$5;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->removeDialog(I)V

    .line 418
    return-void
.end method
