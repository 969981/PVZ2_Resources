.class public final Lct/cr$a;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/cr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lct/cr;

.field public c:I

.field public d:Ljava/lang/String;

.field private e:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "network"

    .line 442
    iput-object v0, p0, Lct/cr$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)Lct/cr$a;
    .locals 1

    .line 485
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lct/cr$a;->e:Landroid/location/Location;

    return-object p0
.end method

.method public final a()Lct/cr;
    .locals 3

    .line 446
    iget-object v0, p0, Lct/cr$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 450
    :try_start_0
    new-instance v0, Lct/cr;

    iget-object v1, p0, Lct/cr$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lct/cr;-><init>(Ljava/lang/String;B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    sget-object v0, Lct/cr;->a:Lct/cr;

    return-object v0

    .line 456
    :cond_0
    iget-object v0, p0, Lct/cr$a;->b:Lct/cr;

    invoke-static {v0}, Lct/cr;->c(Lct/cr;)Lct/cr;

    move-result-object v0

    .line 458
    :goto_0
    iget v1, p0, Lct/cr$a;->c:I

    invoke-static {v0, v1}, Lct/cr;->a(Lct/cr;I)Lct/cr;

    move-result-object v1

    iget-object v2, p0, Lct/cr$a;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lct/cr;->b(Lct/cr;Ljava/lang/String;)Lct/cr;

    move-result-object v1

    iget-object v2, p0, Lct/cr$a;->e:Landroid/location/Location;

    invoke-static {v1, v2}, Lct/cr;->a(Lct/cr;Landroid/location/Location;)Lct/cr;

    .line 460
    invoke-static {}, Lct/ci;->b()V

    return-object v0
.end method
