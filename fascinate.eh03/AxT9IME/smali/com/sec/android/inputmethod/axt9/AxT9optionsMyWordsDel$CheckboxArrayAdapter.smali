.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AxT9optionsMyWordsDel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckboxArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private cb:Landroid/widget/CheckBox;

.field private item:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mResourceId:I

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 796
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    .line 797
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 799
    iput-object p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->item:Ljava/util/ArrayList;

    .line 800
    iput p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->mResourceId:I

    .line 801
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 807
    move-object v1, p2

    .line 808
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_0

    .line 809
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 810
    .local v2, vi:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 813
    .end local v2           #vi:Landroid/view/LayoutInflater;
    :cond_0
    const v3, 0x1080062

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 814
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 825
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 826
    .local v0, content:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 827
    const v3, 0x7f070050

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    .line 828
    const v3, 0x7f070051

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    .line 829
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 830
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 832
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 833
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 846
    :cond_1
    :goto_0
    return-object v1

    .line 835
    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 838
    :cond_3
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 839
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 841
    :cond_4
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
