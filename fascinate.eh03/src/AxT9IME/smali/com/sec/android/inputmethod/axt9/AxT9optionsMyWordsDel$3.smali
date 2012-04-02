.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;
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
    .line 202
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    invoke-virtual {p2, v2}, Landroid/view/View;->setPressed(Z)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v3

    :goto_1
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Z)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 221
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$002(Z)Z

    .line 225
    :goto_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->notifyDataSetChanged()V

    .line 226
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 219
    goto :goto_1

    .line 223
    :cond_2
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$002(Z)Z

    goto :goto_2
.end method
