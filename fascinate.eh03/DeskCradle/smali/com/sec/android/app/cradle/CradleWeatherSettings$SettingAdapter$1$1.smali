.class Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1$1;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 618
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;->val$box:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 619
    .local v0, fchecked:Z
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;->val$box:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 620
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;->val$item:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->setChecked(Z)V

    .line 621
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;->this$1:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;

    iget v2, v2, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;->val$myPosition:I

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->access$500(Lcom/sec/android/app/cradle/CradleWeatherSettings;IZ)V

    .line 622
    return-void

    .line 618
    .end local v0           #fchecked:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
