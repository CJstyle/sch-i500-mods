.class Lcom/sec/android/app/cradle/CradleWeatherSettings$7;
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
    .line 446
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x2

    const-string v8, ")"

    const-string v7, " ("

    .line 448
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    iget-object v3, v3, Lcom/sec/android/app/cradle/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 449
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 451
    .local v2, weatherUnit:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 461
    :goto_0
    const-string v3, "cradle_weather_unit"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 462
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 463
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getCount()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 464
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    .line 465
    .local v1, item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    invoke-static {v1, v2}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->access$302(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-static {v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$200(Lcom/sec/android/app/cradle/CradleWeatherSettings;)Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 468
    .end local v1           #item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->removeDialog(I)V

    .line 469
    return-void

    .line 454
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 455
    goto :goto_0

    .line 458
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
