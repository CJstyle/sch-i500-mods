.class Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$3;
.super Ljava/lang/Object;
.source "FrequentDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;
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
    .line 415
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "av"
    .parameter "v"
    .parameter "index"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 416
    const v1, 0x7f0600aa

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 417
    .local v0, box:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;

    move-result-object v1

    sub-int v2, p3, v4

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->setItemChecked(IZ)V

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V

    .line 421
    :cond_0
    return-void

    .line 418
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
