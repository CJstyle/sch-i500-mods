.class Lcom/android/music/common/richinfo/RichInformationMainActivity$MoveToAnotherPageDialogAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RichInformationMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/richinfo/RichInformationMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveToAnotherPageDialogAdapter"
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
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
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
    .line 911
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$MoveToAnotherPageDialogAdapter;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    .line 912
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 913
    iput-object p4, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$MoveToAnotherPageDialogAdapter;->items:Ljava/util/ArrayList;

    .line 914
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 917
    move-object v3, p2

    .line 918
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 919
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$MoveToAnotherPageDialogAdapter;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 920
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030036

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 923
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$MoveToAnotherPageDialogAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 924
    .local v2, ti:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 925
    const v5, 0x7f0c0134

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 927
    .local v0, pageName:Landroid/widget/TextView;
    const v5, 0x7f0c0135

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 930
    .local v1, pageNumber:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    :cond_1
    if-eqz v1, :cond_2

    .line 934
    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    .end local v0           #pageName:Landroid/widget/TextView;
    .end local v1           #pageNumber:Landroid/widget/TextView;
    :cond_2
    return-object v3
.end method
