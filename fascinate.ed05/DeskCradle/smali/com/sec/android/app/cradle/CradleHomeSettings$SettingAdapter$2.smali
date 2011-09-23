.class Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

.field final synthetic val$Text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    iput-object p2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;->val$Text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;->val$Text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->selectWallpaperDialog()V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;->val$Text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->selectDisplayClock()V

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;->val$Text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/CradleHomeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$2;->this$1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->selectAccuWeather()V

    .line 639
    :cond_2
    return-void
.end method
