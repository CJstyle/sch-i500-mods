.class public Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;
.super Ljava/lang/Object;
.source "TFAnimatedListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemAnimator"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "TFAnimatedListView.ItemAnimator"


# instance fields
.field private mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mRetainAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mTempItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 726
    const-class v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)V
    .locals 1
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    .line 740
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    .line 743
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 3
    .parameter "indent"

    .prologue
    const-string v2, "TFAnimatedListView.ItemAnimator"

    .line 729
    const-string v0, "TFAnimatedListView.ItemAnimator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAnimations item count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v0, "TFAnimatedListView.ItemAnimator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mRetainAnimations item count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v0, "TFAnimatedListView.ItemAnimator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDeleteAnimations item count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void
.end method

.method public forceFinish()V
    .locals 2

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeAll()V

    .line 1087
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1089
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$500(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$502(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Z)Z

    .line 1091
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    .line 1094
    :cond_0
    return-void
.end method

.method public getDeleteItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    return-object p0
.end method

.method public getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    return-object p0
.end method

.method public getRetainItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    return-object p0
.end method

.method public putDeleteItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 793
    return-void
.end method

.method public putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 773
    return-void
.end method

.method public putRetainItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 783
    return-void
.end method

.method public removeAll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 934
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 935
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 936
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 937
    .local v3, aniKey:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 938
    .local v1, a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_0

    .line 939
    instance-of v5, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v5, :cond_0

    .line 940
    move-object v0, v1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v2, v0

    .line 941
    .local v2, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 942
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 943
    invoke-static {v2, v6}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 935
    .end local v2           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 949
    .end local v1           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v3           #aniKey:I
    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 950
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 951
    .restart local v3       #aniKey:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 952
    .restart local v1       #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_2

    .line 953
    instance-of v5, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v5, :cond_2

    .line 954
    move-object v0, v1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v2, v0

    .line 955
    .restart local v2       #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 956
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 957
    invoke-static {v2, v6}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 949
    .end local v2           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 963
    .end local v1           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v3           #aniKey:I
    :cond_3
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 964
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 965
    .restart local v3       #aniKey:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 966
    .restart local v1       #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_4

    .line 967
    instance-of v5, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v5, :cond_4

    .line 968
    move-object v0, v1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v2, v0

    .line 969
    .restart local v2       #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 970
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 971
    invoke-static {v2, v6}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 963
    .end local v2           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 978
    .end local v1           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v3           #aniKey:I
    .end local v4           #i:I
    :cond_5
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 979
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 980
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 982
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_6

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_6

    .line 984
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 985
    :cond_6
    return-void
.end method

.method public removeDeleteItemAnimation(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 914
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 915
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 916
    .local v1, a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_0

    .line 917
    instance-of v3, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v3, :cond_0

    .line 918
    move-object v0, v1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v2, v0

    .line 919
    .local v2, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 920
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 921
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 926
    .end local v1           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v2           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 927
    return-void
.end method

.method public removeDeleteItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 5
    .parameter "a"

    .prologue
    .line 853
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    .line 854
    .local v2, i:I
    if-ltz v2, :cond_1

    .line 855
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 856
    instance-of v3, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v3, :cond_0

    .line 857
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v1, v0

    .line 858
    .local v1, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 859
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 860
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 864
    .end local v1           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 867
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 869
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 870
    :cond_2
    return-void
.end method

.method public removeItemAnimation(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 878
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 879
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 880
    .local v1, a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_0

    .line 881
    instance-of v3, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v3, :cond_0

    .line 882
    move-object v0, v1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v2, v0

    .line 883
    .local v2, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 884
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 885
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 890
    .end local v1           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v2           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 892
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 894
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 895
    :cond_1
    return-void
.end method

.method public removeItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 5
    .parameter "a"

    .prologue
    .line 801
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    .line 802
    .local v2, i:I
    if-ltz v2, :cond_1

    .line 803
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    instance-of v3, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v3, :cond_0

    .line 805
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v1, v0

    .line 806
    .local v1, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 807
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 808
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 812
    .end local v1           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 815
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 817
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 818
    :cond_2
    return-void
.end method

.method public removeRetainItemAnimation(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 898
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 899
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 900
    .local v1, a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v1, :cond_0

    .line 901
    instance-of v3, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v3, :cond_0

    .line 902
    move-object v0, v1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v2, v0

    .line 903
    .local v2, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 904
    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 905
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 910
    .end local v1           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v2           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 911
    return-void
.end method

.method public removeRetainItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 5
    .parameter "a"

    .prologue
    .line 827
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    .line 828
    .local v2, i:I
    if-ltz v2, :cond_1

    .line 829
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 830
    instance-of v3, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v3, :cond_0

    .line 831
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v1, v0

    .line 832
    .local v1, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 833
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 834
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 838
    .end local v1           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 841
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 843
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 844
    :cond_2
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1008
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1009
    .local v3, curTime:J
    const/4 v1, 0x1

    .line 1010
    .local v1, allFinished:Z
    const/4 v2, 0x0

    .line 1012
    .local v2, animationCount:I
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1014
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1015
    .local v10, size:I
    add-int/2addr v2, v10

    .line 1016
    sub-int v6, v10, v12

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_2

    .line 1017
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1018
    .local v9, position:I
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 1019
    .local v8, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    sget-boolean v11, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    if-nez v8, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1020
    :cond_0
    invoke-virtual {v8, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 1021
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 1022
    .local v5, finished:Z
    and-int/2addr v1, v5

    .line 1023
    if-eqz v5, :cond_1

    .line 1024
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1025
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1030
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_2
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1031
    add-int/2addr v2, v10

    .line 1032
    sub-int v6, v10, v12

    :goto_1
    if-ltz v6, :cond_5

    .line 1033
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1034
    .restart local v9       #position:I
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 1035
    .restart local v8       #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    sget-boolean v11, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->$assertionsDisabled:Z

    if-nez v11, :cond_3

    if-nez v8, :cond_3

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1036
    :cond_3
    invoke-virtual {v8, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 1037
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 1038
    .restart local v5       #finished:Z
    and-int/2addr v1, v5

    .line 1039
    if-eqz v5, :cond_4

    .line 1040
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1041
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1046
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_5
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1047
    add-int/2addr v2, v10

    .line 1048
    sub-int v6, v10, v12

    :goto_2
    if-ltz v6, :cond_8

    .line 1049
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1050
    .restart local v9       #position:I
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 1051
    .restart local v8       #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    sget-boolean v11, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->$assertionsDisabled:Z

    if-nez v11, :cond_6

    if-nez v8, :cond_6

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1052
    :cond_6
    invoke-virtual {v8, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 1053
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 1054
    .restart local v5       #finished:Z
    and-int/2addr v1, v5

    .line 1055
    if-eqz v5, :cond_7

    .line 1056
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_7

    .line 1057
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1062
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_8
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 1063
    .local v0, aToDelete:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1064
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeRetainItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1065
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeDeleteItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto :goto_3

    .line 1068
    .end local v0           #aToDelete:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    :cond_9
    if-nez v2, :cond_a

    .line 1069
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v11, v11, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v11}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 1071
    :cond_a
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1073
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->invalidate()V

    .line 1074
    if-nez v1, :cond_c

    .line 1075
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v11, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->post(Ljava/lang/Runnable;)Z

    .line 1083
    :cond_b
    :goto_4
    return-void

    .line 1077
    :cond_c
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$500(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1078
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$502(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Z)Z

    .line 1079
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 1080
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    goto :goto_4
.end method

.method public start()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$502(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Z)Z

    .line 995
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 996
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->run()V

    .line 998
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$500(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$600(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;->OnItemAnimationStart()V

    .line 1002
    :cond_0
    return-void
.end method
