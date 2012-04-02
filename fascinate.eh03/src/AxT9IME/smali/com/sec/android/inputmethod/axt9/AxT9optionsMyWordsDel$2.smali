.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;
.super Ljava/lang/Object;
.source "AxT9optionsMyWordsDel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

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

    .line 174
    invoke-virtual {p2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 176
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$000()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    :goto_0
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$002(Z)Z

    .line 177
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->notifyDataSetChanged()V

    .line 178
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 179
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070051

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 181
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$000()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v1           #i:I
    :cond_0
    move v3, v5

    .line 176
    goto :goto_0

    .line 183
    .restart local v1       #i:I
    :cond_1
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 185
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 188
    .end local v2           #idx:I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v6

    :goto_3
    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Z)V

    .line 189
    return-void

    :cond_3
    move v4, v5

    .line 188
    goto :goto_3
.end method
