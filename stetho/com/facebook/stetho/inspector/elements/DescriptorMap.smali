.class public final Lcom/facebook/stetho/inspector/elements/DescriptorMap;
.super Ljava/lang/Object;
.source "DescriptorMap.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/elements/DescriptorRegistrar;


# instance fields
.field private mHost:Lcom/facebook/stetho/inspector/elements/Descriptor$Host;

.field private mIsInitializing:Z

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/facebook/stetho/inspector/elements/Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mMap:Ljava/util/Map;

    return-void
.end method

.method private getImpl(Ljava/lang/Class;)Lcom/facebook/stetho/inspector/elements/Descriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/facebook/stetho/inspector/elements/Descriptor;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    .local p1, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .line 92
    .local v1, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 93
    iget-object v2, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/stetho/inspector/elements/Descriptor;

    .line 94
    .local v0, "descriptor":Lcom/facebook/stetho/inspector/elements/Descriptor;
    if-eqz v0, :cond_0

    .line 99
    .end local v0    # "descriptor":Lcom/facebook/stetho/inspector/elements/Descriptor;
    :goto_1
    return-object v0

    .line 97
    .restart local v0    # "descriptor":Lcom/facebook/stetho/inspector/elements/Descriptor;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 98
    goto :goto_0

    .line 99
    .end local v0    # "descriptor":Lcom/facebook/stetho/inspector/elements/Descriptor;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public beginInit()Lcom/facebook/stetho/inspector/elements/DescriptorMap;
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mIsInitializing:Z

    invoke-static {v0}, Lcom/facebook/stetho/common/Util;->throwIf(Z)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mIsInitializing:Z

    .line 27
    return-object p0
.end method

.method public endInit()Lcom/facebook/stetho/inspector/elements/DescriptorMap;
    .locals 7

    .prologue
    .line 61
    iget-boolean v5, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mIsInitializing:Z

    invoke-static {v5}, Lcom/facebook/stetho/common/Util;->throwIfNot(Z)V

    .line 62
    iget-object v5, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mHost:Lcom/facebook/stetho/inspector/elements/Descriptor$Host;

    invoke-static {v5}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mIsInitializing:Z

    .line 66
    iget-object v5, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 67
    .local v2, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/stetho/inspector/elements/Descriptor;

    .line 69
    .local v1, "descriptor":Lcom/facebook/stetho/inspector/elements/Descriptor;
    instance-of v6, v1, Lcom/facebook/stetho/inspector/elements/ChainedDescriptor;

    if-eqz v6, :cond_0

    move-object v0, v1

    .line 70
    check-cast v0, Lcom/facebook/stetho/inspector/elements/ChainedDescriptor;

    .line 71
    .local v0, "chainedDescriptor":Lcom/facebook/stetho/inspector/elements/ChainedDescriptor;
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 72
    .local v3, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v3}, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->getImpl(Ljava/lang/Class;)Lcom/facebook/stetho/inspector/elements/Descriptor;

    move-result-object v4

    .line 73
    .local v4, "superDescriptor":Lcom/facebook/stetho/inspector/elements/Descriptor;
    invoke-interface {v0, v4}, Lcom/facebook/stetho/inspector/elements/ChainedDescriptor;->setSuper(Lcom/facebook/stetho/inspector/elements/Descriptor;)V

    .line 76
    .end local v0    # "chainedDescriptor":Lcom/facebook/stetho/inspector/elements/ChainedDescriptor;
    .end local v3    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "superDescriptor":Lcom/facebook/stetho/inspector/elements/Descriptor;
    :cond_0
    iget-object v6, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mHost:Lcom/facebook/stetho/inspector/elements/Descriptor$Host;

    invoke-virtual {v1, v6}, Lcom/facebook/stetho/inspector/elements/Descriptor;->initialize(Lcom/facebook/stetho/inspector/elements/Descriptor$Host;)V

    goto :goto_0

    .line 79
    .end local v1    # "descriptor":Lcom/facebook/stetho/inspector/elements/Descriptor;
    .end local v2    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-object p0
.end method

.method public get(Ljava/lang/Class;)Lcom/facebook/stetho/inspector/elements/Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/facebook/stetho/inspector/elements/Descriptor;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    .local p1, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-boolean v0, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mIsInitializing:Z

    invoke-static {v0}, Lcom/facebook/stetho/common/Util;->throwIf(Z)V

    .line 86
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->getImpl(Ljava/lang/Class;)Lcom/facebook/stetho/inspector/elements/Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public registerDescriptor(Ljava/lang/Class;Lcom/facebook/stetho/inspector/elements/Descriptor;)Lcom/facebook/stetho/inspector/elements/DescriptorMap;
    .locals 1
    .param p2, "descriptor"    # Lcom/facebook/stetho/inspector/elements/Descriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/facebook/stetho/inspector/elements/Descriptor;",
            ")",
            "Lcom/facebook/stetho/inspector/elements/DescriptorMap;"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p2}, Lcom/facebook/stetho/inspector/elements/Descriptor;->isInitialized()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/stetho/common/Util;->throwIf(Z)V

    .line 35
    iget-boolean v0, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mIsInitializing:Z

    invoke-static {v0}, Lcom/facebook/stetho/common/Util;->throwIfNot(Z)V

    .line 38
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object p0
.end method

.method public bridge synthetic registerDescriptor(Ljava/lang/Class;Lcom/facebook/stetho/inspector/elements/Descriptor;)Lcom/facebook/stetho/inspector/elements/DescriptorRegistrar;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->registerDescriptor(Ljava/lang/Class;Lcom/facebook/stetho/inspector/elements/Descriptor;)Lcom/facebook/stetho/inspector/elements/DescriptorMap;

    move-result-object v0

    return-object v0
.end method

.method public setHost(Lcom/facebook/stetho/inspector/elements/Descriptor$Host;)Lcom/facebook/stetho/inspector/elements/DescriptorMap;
    .locals 1
    .param p1, "host"    # Lcom/facebook/stetho/inspector/elements/Descriptor$Host;

    .prologue
    .line 52
    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-boolean v0, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mIsInitializing:Z

    invoke-static {v0}, Lcom/facebook/stetho/common/Util;->throwIfNot(Z)V

    .line 54
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mHost:Lcom/facebook/stetho/inspector/elements/Descriptor$Host;

    invoke-static {v0}, Lcom/facebook/stetho/common/Util;->throwIfNotNull(Ljava/lang/Object;)V

    .line 56
    iput-object p1, p0, Lcom/facebook/stetho/inspector/elements/DescriptorMap;->mHost:Lcom/facebook/stetho/inspector/elements/Descriptor$Host;

    .line 57
    return-object p0
.end method
