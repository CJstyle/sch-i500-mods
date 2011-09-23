.class Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

.field final synthetic val$Text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    iput-object p2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;->val$Text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;->val$Text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->selectCity()V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;->val$Text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->selectAutoRefresh()V

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;->val$Text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleWeatherSettings;->selectUnit()V

    .line 640
    :cond_2
    return-void
.end method
