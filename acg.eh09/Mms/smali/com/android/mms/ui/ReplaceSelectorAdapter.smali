.class public Lcom/android/mms/ui/ReplaceSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "ReplaceSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isVideo"

    .prologue
    .line 36
    invoke-static {p1, p2}, Lcom/android/mms/ui/ReplaceSelectorAdapter;->getData(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 37
    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "resource"
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;-><init>(Ljava/lang/String;II)V

    .line 64
    .local v0, temp:Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method protected static getData(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .parameter "context"
    .parameter "isVideo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v2, 0x7f0901bc

    const/4 v3, 0x0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/ReplaceSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 49
    const v1, 0x7f0900f5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/ReplaceSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 58
    :goto_0
    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, Lcom/android/mms/ui/ReplaceSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 55
    const v1, 0x7f0900f3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/ReplaceSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    goto :goto_0
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReplaceSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;

    .line 41
    .local v0, item:Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/ReplaceSelectorAdapter$ReplaceListItem;->getCommand()I

    move-result v1

    return v1
.end method
