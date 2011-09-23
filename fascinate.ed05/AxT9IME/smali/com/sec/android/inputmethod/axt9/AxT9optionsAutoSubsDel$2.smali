.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsDel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 200
    invoke-virtual {p2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 202
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$000()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    :goto_0
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$002(Z)Z

    .line 203
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->notifyDataSetChanged()V

    .line 204
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 205
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070047

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 207
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$000()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v1           #i:I
    :cond_0
    move v3, v5

    .line 202
    goto :goto_0

    .line 209
    .restart local v1       #i:I
    :cond_1
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 211
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 214
    .end local v2           #idx:I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v6

    :goto_3
    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Z)V

    .line 215
    return-void

    :cond_3
    move v4, v5

    .line 214
    goto :goto_3
.end method
