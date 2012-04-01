.class Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhonesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PhoneDisambigDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhonesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;>;"
    const v0, 0x109000a

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 133
    return-void
.end method
