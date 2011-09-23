.class Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;
.super Ljava/lang/Object;
.source "RamUseageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button_level1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button_level2:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_level:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->killAll(I)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_level:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
