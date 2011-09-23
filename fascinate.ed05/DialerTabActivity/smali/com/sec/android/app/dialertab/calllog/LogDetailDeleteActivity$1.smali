.class Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$1;
.super Ljava/lang/Object;
.source "LogDetailDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->setAllItemChecked(Z)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->setAllItemChecked(Z)V

    goto :goto_0
.end method
