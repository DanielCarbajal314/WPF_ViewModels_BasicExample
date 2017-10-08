using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;

namespace Presentacion
{
    public class ProductoViewModel : INotifyPropertyChanged
    {
        private Producto _productoVisualizado;
        public Producto productoVisualizado {
            get { return _productoVisualizado; }
            set {
                _productoVisualizado = value;
                this.OnPropertyChanged("productoVisualizado");
            }
        }
        public ObservableCollection<Producto> Productos { get; set; }

        private bool _canExecute = true;

        public static int ProductoId = 1;

        public ProductoViewModel() {
            this.Productos = new ObservableCollection<Producto>();
            GenerarEstadoInicial();
            this.productoVisualizado = crearNuevoProducto();

        }

        public void crearProducto() {
            this.Productos.Add(this.productoVisualizado);
            this.productoVisualizado = crearNuevoProducto();
        }

        Producto crearNuevoProducto() {
            Producto producto = new Producto();
            producto.Id = ProductoId++;
            producto.Nombre = "";
            producto.Stock = 0;
            producto.Descripcion = "";
            producto.StockMinimo = 0;
            return producto;
        }

        public void GenerarEstadoInicial() {
            Producto producto = crearNuevoProducto();
            producto.Nombre = "Caramelo";
            producto.Descripcion = "Es un rico caramelo";
            producto.Stock = 100;
            producto.StockMinimo = 10;
            this.Productos.Add(producto);
        }

        private ICommand _clickCommand;

        public event PropertyChangedEventHandler PropertyChanged;

        public ICommand RegistrarProducto
        {
            get
            {
                return _clickCommand ?? (_clickCommand = new CommandHandler(() => crearProducto(), _canExecute));
            }
        }

        protected void OnPropertyChanged(string name)
        {
            PropertyChangedEventHandler handler = PropertyChanged;
            if (handler != null)
            {
                handler(this, new PropertyChangedEventArgs(name));
            }
        }
    }
}
