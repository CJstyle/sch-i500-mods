.class Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$1;
.super Ljava/lang/Object;
.source "FrequentDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

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

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->setAllItemChecked(Z)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->setAllItemChecked(Z)V

    goto :goto_0
.end method
