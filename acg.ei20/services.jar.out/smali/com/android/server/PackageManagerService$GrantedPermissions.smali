.class Lcom/android/server/PackageManagerService$GrantedPermissions;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GrantedPermissions"
.end annotation


# instance fields
.field gids:[I

.field grantedPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pkgFlags:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "pkgFlags"

    .prologue
    .line 7981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7978
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 7982
    invoke-virtual {p0, p1}, Lcom/android/server/PackageManagerService$GrantedPermissions;->setFlags(I)V

    .line 7983
    return-void
.end method

.method constructor <init>(Lcom/android/server/PackageManagerService$GrantedPermissions;)V
    .locals 1
    .parameter "base"

    .prologue
    .line 7985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7978
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 7986
    iget v0, p1, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    iput v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    .line 7987
    iget-object v0, p1, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 7989
    iget-object v0, p1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    if-eqz v0, :cond_0

    .line 7990
    iget-object v0, p1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 7992
    :cond_0
    return-void
.end method


# virtual methods
.method setFlags(I)V
    .locals 1
    .parameter "pkgFlags"

    .prologue
    .line 7995
    const v0, 0x60040001

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    .line 8000
    return-void
.end method
