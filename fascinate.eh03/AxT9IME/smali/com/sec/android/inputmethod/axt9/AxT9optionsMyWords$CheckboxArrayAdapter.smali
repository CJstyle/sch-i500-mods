.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AxT9optionsMyWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;
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

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Landroid/content/Context;ILjava/util/ArrayList;)V
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
    .line 761
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    .line 762
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 764
    iput-object p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->item:Ljava/util/ArrayList;

    .line 765
    iput p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->mResourceId:I

    .line 766
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 772
    move-object v1, p2

    .line 773
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_0

    .line 774
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 775
    .local v2, vi:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 778
    .end local v2           #vi:Landroid/view/LayoutInflater;
    :cond_0
    const v3, 0x1080062

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 779
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 789
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 790
    .local v0, content:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 791
    const v3, 0x7f070052

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    .line 792
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 793
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    :cond_1
    return-object v1
.end method
