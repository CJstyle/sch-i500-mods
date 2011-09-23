.class Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$3;
.super Ljava/lang/Object;
.source "FrequentGridDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;
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
    .line 188
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "av"
    .parameter "v"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 189
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-lez v3, :cond_0

    .line 191
    move-object v0, p1

    check-cast v0, Landroid/widget/GridView;

    move-object v3, v0

    invoke-virtual {v3, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;

    .line 192
    .local v2, item:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->toggle()V

    .line 193
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    .line 194
    .local v1, adapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;
    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->isChecked()Z

    move-result v3

    invoke-virtual {v1, p3, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->setItemChecked(IZ)V

    .line 196
    .end local v1           #adapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;
    .end local v2           #item:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V

    .line 197
    return-void
.end method
