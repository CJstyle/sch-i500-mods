.class Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1$1;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 657
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;->val$box:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 659
    .local v0, fchecked:Z
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;->this$1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;

    iget v2, v2, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->setChecked(Z)V

    .line 662
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;->this$1:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;

    iget v2, v2, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingAdapter$1;->val$myPosition:I

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/cradle/CradleHomeSettings;->access$300(Lcom/sec/android/app/cradle/CradleHomeSettings;IZ)V

    .line 663
    return-void
.end method