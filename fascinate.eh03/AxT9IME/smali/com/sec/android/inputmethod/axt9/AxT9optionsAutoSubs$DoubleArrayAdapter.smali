.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AxT9optionsAutoSubs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;",
        ">;"
    }
.end annotation


# instance fields
.field private cb:Landroid/widget/CheckBox;

.field private ctv:Landroid/widget/TextView;

.field private item:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceId:I

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 752
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    .line 753
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    .line 756
    iput p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->mResourceId:I

    .line 757
    return-void
.end method


# virtual methods
.method public add(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 801
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 738
    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->add(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 807
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 808
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 763
    move-object v1, p2

    .line 764
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_0

    .line 765
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 766
    .local v2, vi:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 768
    .end local v2           #vi:Landroid/view/LayoutInflater;
    :cond_0
    const v3, 0x1080062

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 769
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 783
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;

    .line 784
    .local v0, p:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;
    if-eqz v0, :cond_1

    .line 785
    const v3, 0x7f070045

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    .line 786
    const v3, 0x7f070046

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->ctv:Landroid/widget/TextView;

    .line 787
    const v3, 0x7f070047

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    .line 788
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 789
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->ctv:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 790
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;->getS1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->ctv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;->getS2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    :cond_1
    return-object v1
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 813
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;>;"
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 814
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 815
    return-void
.end method
