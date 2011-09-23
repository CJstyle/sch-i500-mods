.class Landroid/widget/TextView$MenuHandler;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 7262
    iput-object p1, p0, Landroid/widget/TextView$MenuHandler;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7262
    invoke-direct {p0, p1}, Landroid/widget/TextView$MenuHandler;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 7267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 7268
    .local v0, id:I
    const/4 v1, 0x0

    .line 7270
    .local v1, ret:Z
    const v2, 0x1020028

    if-eq v0, v2, :cond_0

    const v2, 0x1020029

    if-ne v0, v2, :cond_1

    .line 7271
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView$MenuHandler;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 7272
    iget-object v2, p0, Landroid/widget/TextView$MenuHandler;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    .line 7273
    iget-object v2, p0, Landroid/widget/TextView$MenuHandler;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->endBatchEdit()V

    .line 7278
    :goto_0
    return v1

    .line 7275
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView$MenuHandler;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0
.end method
