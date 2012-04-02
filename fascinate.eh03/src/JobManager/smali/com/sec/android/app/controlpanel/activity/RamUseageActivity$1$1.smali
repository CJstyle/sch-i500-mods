.class Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1$1;
.super Ljava/lang/Object;
.source "RamUseageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1$1;->this$1:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    return-void
.end method
