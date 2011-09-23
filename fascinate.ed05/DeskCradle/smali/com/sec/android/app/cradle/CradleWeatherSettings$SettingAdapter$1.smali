.class Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;
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

.field final synthetic val$box:Landroid/widget/CheckBox;

.field final synthetic val$checkLayout:Landroid/view/View;

.field final synthetic val$myPosition:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;Landroid/view/View;Landroid/widget/CheckBox;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;->this$1:Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter;

    iput-object p2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;->val$checkLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;->val$box:Landroid/widget/CheckBox;

    iput p4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;->val$myPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;->val$checkLayout:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1$1;-><init>(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 614
    return-void
.end method
