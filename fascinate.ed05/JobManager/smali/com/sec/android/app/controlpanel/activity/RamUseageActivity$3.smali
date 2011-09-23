.class Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;
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
    .line 92
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button_level2:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_level:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button_level1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_level:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
