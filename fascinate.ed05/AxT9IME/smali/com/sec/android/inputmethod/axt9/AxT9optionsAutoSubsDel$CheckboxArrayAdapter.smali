.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AxT9optionsAutoSubsDel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;
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

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Landroid/content/Context;ILjava/util/ArrayList;)V
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
    .line 697
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    .line 698
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 700
    iput-object p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->item:Ljava/util/ArrayList;

    .line 701
    iput p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->mResourceId:I

    .line 702
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 708
    move-object v1, p2

    .line 709
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_0

    .line 710
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 711
    .local v2, vi:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 714
    .end local v2           #vi:Landroid/view/LayoutInflater;
    :cond_0
    const v3, 0x1080062

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 715
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 725
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 726
    .local v0, content:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 727
    const v3, 0x7f070050

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    .line 728
    const v3, 0x7f070051

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    .line 729
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 730
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 732
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 738
    :cond_1
    :goto_0
    return-object v1

    .line 734
    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
