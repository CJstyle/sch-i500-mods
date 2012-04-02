.class Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$1;
.super Ljava/lang/Object;
.source "FrequentGridDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

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

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->setAllItemChecked(Z)V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->setAllItemChecked(Z)V

    goto :goto_0
.end method
