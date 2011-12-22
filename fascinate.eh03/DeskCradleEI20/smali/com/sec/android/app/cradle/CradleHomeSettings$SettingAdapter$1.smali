.class Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;
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

.field final synthetic val$box:Landroid/widget/CheckBox;

.field final synthetic val$myPosition:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;Landroid/widget/CheckBox;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;->this$1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    iput-object p2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;->val$box:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;->val$position:I

    iput p4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;->val$myPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;->val$box:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1$1;-><init>(Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->post(Ljava/lang/Runnable;)Z

    .line 666
    return-void
.end method
