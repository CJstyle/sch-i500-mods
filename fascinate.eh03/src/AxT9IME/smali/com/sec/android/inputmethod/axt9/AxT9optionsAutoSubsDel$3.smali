.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;
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
    .line 223
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    invoke-virtual {p2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;

    iget-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;->shortcut:Ljava/lang/String;

    .line 231
    .local v0, selectText:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v4

    :goto_1
    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Z)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 238
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$002(Z)Z

    .line 242
    :goto_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->notifyDataSetChanged()V

    .line 243
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v2, v3

    .line 236
    goto :goto_1

    .line 240
    :cond_2
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$002(Z)Z

    goto :goto_2
.end method
