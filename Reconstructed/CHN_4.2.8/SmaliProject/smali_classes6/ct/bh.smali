.class public final Lct/bh;
.super Lct/bi;
.source "TL"

# interfaces
.implements Lct/bg;
.implements Lct/bv;
.implements Lct/bz;


# static fields
.field public static final a:Lct/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lct/bh;

    invoke-direct {v0}, Lct/bh;-><init>()V

    sput-object v0, Lct/bh;->a:Lct/bh;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "dummy"

    .line 41
    invoke-direct {p0, v0, v0}, Lct/bi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Lct/bg;
    .locals 1

    .line 22
    sget-object v0, Lct/bh;->a:Lct/bh;

    return-object v0
.end method

.method public static c()Lct/bv;
    .locals 1

    .line 26
    sget-object v0, Lct/bh;->a:Lct/bh;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method protected final a(Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()Landroid/location/Location;
    .locals 1

    .line 58
    sget-object v0, Lct/bp;->b:Landroid/location/Location;

    return-object v0
.end method
