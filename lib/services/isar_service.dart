import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/usuario.dart';
import '../models/producto.dart';
import '../models/venta.dart';
import '../models/detalle_venta.dart';
import '../models/compra.dart';
import '../models/detalle_compra.dart';
import '../models/transferencia.dart';
import '../models/detalle_transferencia.dart';
import '../models/inventario_tienda.dart';
import '../models/inventario_almacen.dart';
import '../models/tienda.dart';
import '../models/almacen.dart';
import '../models/proveedor.dart';
import '../models/rol.dart';
import '../models/categoria.dart';

class IsarService {
  static final IsarService _instance = IsarService._internal();
  factory IsarService() => _instance;
  IsarService._internal();

  late Future<Isar> _dbFuture;

  Future<void> initDB() async {
    final dir = await getApplicationDocumentsDirectory();
    _dbFuture = Isar.open([UsuarioSchema, RolSchema, ProductoSchema, TiendaSchema, AlmacenSchema, CategoriaSchema, ProveedorSchema, InventarioTiendaSchema, InventarioAlmacenSchema, VentaSchema, DetalleVentaSchema, CompraSchema, DetalleCompraSchema, TransferenciaSchema, DetalleTransferenciaSchema],
      directory: dir.path);
    
    // Inicializar datos por defecto si no existen
    await _initDefaultData();
  }

  Future<void> _initDefaultData() async {
    final isar = await db;
    
    // Verificar si ya existen usuarios
    final userCount = await isar.usuarios.count();
    if (userCount == 0) {
      // Crear usuarios por defecto
      await isar.writeTxn(() async {
        // Usuario administrador
        final admin = Usuario()
          ..usuId = 1
          ..usuNombre = 'Admin'
          ..usuPaterno = 'Sistema'
          ..usuMaterno = ''
          ..usuUsuario = 'admin'
          ..usuPassword = 'admin123'
          ..rlId = 1
          ..estado = 1
          ..fxCreacion = DateTime.now();
        await isar.usuarios.put(admin);

        // Usuario de prueba
        final test = Usuario()
          ..usuId = 2
          ..usuNombre = 'Usuario'
          ..usuPaterno = 'Prueba'
          ..usuMaterno = ''
          ..usuUsuario = 'test'
          ..usuPassword = 'test123'
          ..rlId = 2
          ..estado = 1
          ..fxCreacion = DateTime.now();
        await isar.usuarios.put(test);

        // Usuario demo
        final demo = Usuario()
          ..usuId = 3
          ..usuNombre = 'Demo'
          ..usuPaterno = 'User'
          ..usuMaterno = ''
          ..usuUsuario = 'demo'
          ..usuPassword = 'demo'
          ..rlId = 2
          ..estado = 1
          ..fxCreacion = DateTime.now();
        await isar.usuarios.put(demo);
      });
    }

    // Inicializar productos por defecto
    await _initDefaultProducts();
    
    // Inicializar tiendas y almacenes por defecto
    await _initDefaultStores();
  }

  Future<void> _initDefaultProducts() async {
    final isar = await db;
    
    final productCount = await isar.productos.count();
    if (productCount == 0) {
      await isar.writeTxn(() async {
        final productos = [
          Producto()
            ..prodId = 1
            ..prodNombre = 'Alfombra Persa Grande'
            ..prodUnidadMedida = 'Unidad'
            ..prodPrecioVenta = 450.0
            ..prodPrecioCompra = 300.0
            ..prodStockGlobal = 25
            ..prodCategoria = 1
            ..prodMinimoStock = 5
            ..prodActivo = 1
            ..estado = 1
            ..fxCreacion = DateTime.now(),
          
          Producto()
            ..prodId = 2
            ..prodNombre = 'Piso Flotante Roble'
            ..prodUnidadMedida = 'M²'
            ..prodPrecioVenta = 35.0
            ..prodPrecioCompra = 22.0
            ..prodStockGlobal = 500
            ..prodCategoria = 2
            ..prodMinimoStock = 50
            ..prodActivo = 1
            ..estado = 1
            ..fxCreacion = DateTime.now(),
            
          Producto()
            ..prodId = 3
            ..prodNombre = 'Cielo Falso PVC'
            ..prodUnidadMedida = 'Panel'
            ..prodPrecioVenta = 25.0
            ..prodPrecioCompra = 15.0
            ..prodStockGlobal = 200
            ..prodCategoria = 3
            ..prodMinimoStock = 20
            ..prodActivo = 1
            ..estado = 1
            ..fxCreacion = DateTime.now(),
            
          Producto()
            ..prodId = 4
            ..prodNombre = 'Vinilo Decorativo Flores'
            ..prodUnidadMedida = 'Rollo'
            ..prodPrecioVenta = 18.0
            ..prodPrecioCompra = 10.0
            ..prodStockGlobal = 150
            ..prodCategoria = 4
            ..prodMinimoStock = 15
            ..prodActivo = 1
            ..estado = 1
            ..fxCreacion = DateTime.now(),
            
          Producto()
            ..prodId = 5
            ..prodNombre = 'Cortina Blackout'
            ..prodUnidadMedida = 'Unidad'
            ..prodPrecioVenta = 80.0
            ..prodPrecioCompra = 50.0
            ..prodStockGlobal = 75
            ..prodCategoria = 5
            ..prodMinimoStock = 10
            ..prodActivo = 1
            ..estado = 1
            ..fxCreacion = DateTime.now(),
            
          Producto()
            ..prodId = 6
            ..prodNombre = 'Papel Tapiz Texturado'
            ..prodUnidadMedida = 'Rollo'
            ..prodPrecioVenta = 45.0
            ..prodPrecioCompra = 28.0
            ..prodStockGlobal = 120
            ..prodCategoria = 6
            ..prodMinimoStock = 12
            ..prodActivo = 1
            ..estado = 1
            ..fxCreacion = DateTime.now(),
            
          Producto()
            ..prodId = 7
            ..prodNombre = 'Lámpara Colgante LED'
            ..prodUnidadMedida = 'Unidad'
            ..prodPrecioVenta = 95.0
            ..prodPrecioCompra = 60.0
            ..prodStockGlobal = 40
            ..prodCategoria = 7
            ..prodMinimoStock = 5
            ..prodActivo = 1
            ..estado = 1
            ..fxCreacion = DateTime.now(),
            
          Producto()
            ..prodId = 8
            ..prodNombre = 'Espejo Decorativo'
            ..prodUnidadMedida = 'Unidad'
            ..prodPrecioVenta = 120.0
            ..prodPrecioCompra = 75.0
            ..prodStockGlobal = 30
            ..prodCategoria = 8
            ..prodMinimoStock = 3
            ..prodActivo = 1
            ..estado = 1
            ..fxCreacion = DateTime.now(),
        ];

        for (final producto in productos) {
          await isar.productos.put(producto);
        }
      });
    }
  }

  Future<void> _initDefaultStores() async {
    final isar = await db;
    
    // Crear tienda por defecto
    final tiendaCount = await isar.tiendas.count();
    if (tiendaCount == 0) {
      await isar.writeTxn(() async {
        final tienda = Tienda()
          ..tiendaId = 1
          ..tiendaNombre = 'Tienda Principal'
          ..tiendaDireccion = 'Av. Principal 123'
          ..usuEncargado = 1
          ..estado = 1
          ..fxCreacion = DateTime.now();
        await isar.tiendas.put(tienda);
      });
    }

    // Crear almacén por defecto
    final almacenCount = await isar.almacens.count();
    if (almacenCount == 0) {
      await isar.writeTxn(() async {
        final almacen = Almacen()
          ..almacenId = 1
          ..almacenNombre = 'Almacén Central'
          ..almacenUbicacion = 'Bodega Industrial Zona 1'
          ..usuEncargado = 1
          ..estado = 1
          ..fxCreacion = DateTime.now();
        await isar.almacens.put(almacen);
      });
    }

    // Inicializar inventario de la tienda
    await _initInventory();
  }

  Future<void> _initInventory() async {
    final isar = await db;
    
    final inventoryCount = await isar.inventarioTiendas.count();
    if (inventoryCount == 0) {
      await isar.writeTxn(() async {
        // Agregar inventario inicial a la tienda
        for (int prodId = 1; prodId <= 8; prodId++) {
          final inventario = InventarioTienda()
            ..invTId = DateTime.now().millisecondsSinceEpoch + prodId
            ..tiendaId = 1
            ..prodId = prodId
            ..invTStock = 10 // Stock inicial en tienda
            ..usuCreacion = 1
            ..estado = 1
            ..fxCreacion = DateTime.now();
          await isar.inventarioTiendas.put(inventario);
        }

        // Agregar inventario inicial al almacén
        for (int prodId = 1; prodId <= 8; prodId++) {
          final inventario = InventarioAlmacen()
            ..invAId = DateTime.now().millisecondsSinceEpoch + prodId + 100
            ..almacenId = 1
            ..prodId = prodId
            ..invAStock = 50 // Stock inicial en almacén
            ..usuCreacion = 1
            ..estado = 1
            ..fxCreacion = DateTime.now();
          await isar.inventarioAlmacens.put(inventario);
        }
      });
    }
  }

  Future<Isar> get db async => await _dbFuture;

  Future<bool> login(String username, String password) async {
    final isar = await db;
    final u = await isar.usuarios.filter().usuUsuarioEqualTo(username).findFirst();
    if (u != null && u.usuPassword == password) return true;
    return false;
  }

  // Basic product CRUD
  Future<void> addProducto(Producto p) async {
    final isar = await db;
    await isar.writeTxn(() async { await isar.productos.put(p); });
  }
  Future<List<Producto>> getAllProductos() async {
    final isar = await db;
    return await isar.productos.where().findAll();
  }

  // ventas/compras/transferencias methods (similar to previous design)
  Future<int> createVentaWithDetails(Venta venta, List<DetalleVenta> detalles) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.ventas.put(venta);
      for (final det in detalles) {
        det.ventaId = venta.ventaId;
        await isar.detalleVentas.put(det);
        final inv = await isar.inventarioTiendas.filter().tiendaIdEqualTo(venta.tiendaId!).and().prodIdEqualTo(det.prodId!).findFirst();
        if (inv != null) {
          inv.invTStock = (inv.invTStock ?? 0) - (det.cantidad ?? 0);
          if (inv.invTStock! < 0) inv.invTStock = 0;
          await isar.inventarioTiendas.put(inv);
        }
        final prod = await isar.productos.filter().prodIdEqualTo(det.prodId!).findFirst();
        if (prod != null) {
          prod.prodStockGlobal = (prod.prodStockGlobal ?? 0) - (det.cantidad ?? 0);
          if (prod.prodStockGlobal! < 0) prod.prodStockGlobal = 0;
          await isar.productos.put(prod);
        }
      }
      venta.estado = 1;
      await isar.ventas.put(venta);
    });
    return venta.ventaId;
  }

  Future<int> createCompraWithDetails(Compra compra, List<DetalleCompra> detalles) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.compras.put(compra);
      for (final det in detalles) {
        det.compraId = compra.compraId;
        await isar.detalleCompras.put(det);
        final inv = await isar.inventarioAlmacens.filter().almacenIdEqualTo(compra.almacenId!).and().prodIdEqualTo(det.prodId!).findFirst();
        if (inv != null) {
          inv.invAStock = (inv.invAStock ?? 0) + (det.cantidad ?? 0);
          await isar.inventarioAlmacens.put(inv);
        } else {
          final newInv = InventarioAlmacen()
            ..invAId = DateTime.now().millisecondsSinceEpoch
            ..almacenId = compra.almacenId
            ..prodId = det.prodId
            ..invAStock = det.cantidad;
          await isar.inventarioAlmacens.put(newInv);
        }
        final prod = await isar.productos.filter().prodIdEqualTo(det.prodId!).findFirst();
        if (prod != null) {
          prod.prodStockGlobal = (prod.prodStockGlobal ?? 0) + (det.cantidad ?? 0);
          await isar.productos.put(prod);
        }
      }
      compra.estado = 1;
      await isar.compras.put(compra);
    });
    return compra.compraId;
  }

  Future<int> createTransferencia(Transferencia transf, List<DetalleTransferencia> detalles) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.transferencias.put(transf);
      for (final det in detalles) {
        det.transfId = transf.transfId;
        await isar.detalleTransferencias.put(det);
        // decrease origen
        if (transf.origenTipo == 'almacen') {
          final inv = await isar.inventarioAlmacens.filter().almacenIdEqualTo(transf.origenId!).and().prodIdEqualTo(det.prodId!).findFirst();
          if (inv != null) {
            inv.invAStock = (inv.invAStock ?? 0) - (det.cantidad ?? 0);
            if (inv.invAStock! < 0) inv.invAStock = 0;
            await isar.inventarioAlmacens.put(inv);
          }
        } else if (transf.origenTipo == 'tienda') {
          final inv = await isar.inventarioTiendas.filter().tiendaIdEqualTo(transf.origenId!).and().prodIdEqualTo(det.prodId!).findFirst();
          if (inv != null) {
            inv.invTStock = (inv.invTStock ?? 0) - (det.cantidad ?? 0);
            if (inv.invTStock! < 0) inv.invTStock = 0;
            await isar.inventarioTiendas.put(inv);
          }
        }
        // increase destino
        if (transf.destinoTipo == 'almacen') {
          final inv = await isar.inventarioAlmacens.filter().almacenIdEqualTo(transf.destinoId!).and().prodIdEqualTo(det.prodId!).findFirst();
          if (inv != null) {
            inv.invAStock = (inv.invAStock ?? 0) + (det.cantidad ?? 0);
            await isar.inventarioAlmacens.put(inv);
          } else {
            final newInv = InventarioAlmacen()
              ..invAId = DateTime.now().millisecondsSinceEpoch
              ..almacenId = transf.destinoId
              ..prodId = det.prodId
              ..invAStock = det.cantidad;
            await isar.inventarioAlmacens.put(newInv);
          }
        } else if (transf.destinoTipo == 'tienda') {
          final inv = await isar.inventarioTiendas.filter().tiendaIdEqualTo(transf.destinoId!).and().prodIdEqualTo(det.prodId!).findFirst();
          if (inv != null) {
            inv.invTStock = (inv.invTStock ?? 0) + (det.cantidad ?? 0);
            await isar.inventarioTiendas.put(inv);
          } else {
            final newInv = InventarioTienda()
              ..invTId = DateTime.now().millisecondsSinceEpoch
              ..tiendaId = transf.destinoId
              ..prodId = det.prodId
              ..invTStock = det.cantidad;
            await isar.inventarioTiendas.put(newInv);
          }
        }
      }
      transf.estado = 1;
      await isar.transferencias.put(transf);
    });
    return transf.transfId;
  }

  // Reports
  Future<List<Venta>> ventasPorTiendaYFecha(int tiendaId, DateTime desde, DateTime hasta) async {
    final isar = await db;
    return await isar.ventas.filter().tiendaIdEqualTo(tiendaId).and().ventaFechaBetween(desde, hasta).findAll();
  }
  Future<double> ventaGlobalDelDia(DateTime dia) async {
    final isar = await db;
    final start = DateTime(dia.year, dia.month, dia.day);
    final end = start.add(const Duration(days: 1));
    final ventas = await isar.ventas.filter().ventaFechaBetween(start, end).findAll();
    double total = 0.0;
    for (final v in ventas) total += v.ventaTotal ?? 0.0;
    return total;
  }

  Future<List<Transferencia>> transferenciasFiltradas() async {
    final isar = await db;
    return await isar.transferencias.where().findAll();
  }

  // Métodos auxiliares para obtener todas las entidades
  Future<List<Compra>> getAllCompras() async {
    final isar = await db;
    return await isar.compras.where().findAll();
  }

  Future<List<Venta>> getAllVentas() async {
    final isar = await db;
    return await isar.ventas.where().findAll();
  }

  // Obtener compras con detalles y nombres de productos
  Future<List<Map<String, dynamic>>> getComprasConDetalles() async {
    final isar = await db;
    final compras = await isar.compras.where().findAll();
    final List<Map<String, dynamic>> comprasDetalladas = [];

    for (final compra in compras) {
      final detalles = await isar.detalleCompras.filter().compraIdEqualTo(compra.compraId).findAll();
      final List<Map<String, dynamic>> detallesConNombres = [];

      for (final detalle in detalles) {
        final producto = await isar.productos.filter().prodIdEqualTo(detalle.prodId!).findFirst();
        detallesConNombres.add({
          'detalle': detalle,
          'producto': producto,
        });
      }

      comprasDetalladas.add({
        'compra': compra,
        'detalles': detallesConNombres,
      });
    }

    return comprasDetalladas;
  }

  // Obtener ventas con detalles y nombres de productos
  Future<List<Map<String, dynamic>>> getVentasConDetalles() async {
    final isar = await db;
    final ventas = await isar.ventas.where().findAll();
    final List<Map<String, dynamic>> ventasDetalladas = [];

    for (final venta in ventas) {
      final detalles = await isar.detalleVentas.filter().ventaIdEqualTo(venta.ventaId).findAll();
      final List<Map<String, dynamic>> detallesConNombres = [];

      for (final detalle in detalles) {
        final producto = await isar.productos.filter().prodIdEqualTo(detalle.prodId!).findFirst();
        detallesConNombres.add({
          'detalle': detalle,
          'producto': producto,
        });
      }

      ventasDetalladas.add({
        'venta': venta,
        'detalles': detallesConNombres,
      });
    }

    return ventasDetalladas;
  }

  // Métodos para gestión de inventario
  Future<List<InventarioTienda>> getInventarioTienda() async {
    final isar = await db;
    return await isar.inventarioTiendas.where().findAll();
  }

  Future<List<InventarioAlmacen>> getInventarioAlmacen() async {
    final isar = await db;
    return await isar.inventarioAlmacens.where().findAll();
  }

  Future<void> updateInventarioTienda(int prodId, int newStock) async {
    final isar = await db;
    await isar.writeTxn(() async {
      final inventory = await isar.inventarioTiendas.filter().prodIdEqualTo(prodId).findFirst();
      if (inventory != null) {
        inventory.invTStock = newStock;
        inventory.fxModif = DateTime.now();
        await isar.inventarioTiendas.put(inventory);
      }
    });
  }

  Future<Producto?> getProductoById(int prodId) async {
    final isar = await db;
    return await isar.productos.filter().prodIdEqualTo(prodId).findFirst();
  }

  Future<List<Producto>> getProductosWithStock() async {
    final isar = await db;
    return await isar.productos.filter().prodStockGlobalGreaterThan(0).findAll();
  }
}
