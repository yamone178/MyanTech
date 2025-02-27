import { useState, useEffect } from "react"
import { DashboardOutlined, MenuFoldOutlined, MenuUnfoldOutlined, ShoppingOutlined } from "@ant-design/icons"
import { Button, Layout, Menu, theme } from "antd"
import { Outlet, Link, useNavigate } from "react-router-dom"
// import Logout from '../pages/User/Logout';
import { FormOutlined, TruckOutlined } from "@ant-design/icons"
// import { UnorderedListOutlined } from '@ant-design/icons';
import { FolderOutlined } from "@ant-design/icons"
import { LogoutOutlined } from "@ant-design/icons"
import { AiOutlinePlus } from "react-icons/ai"
import { MdDashboard } from "react-icons/md"
import axios from "../api/axios"
// import Logo from "../assets/Images/Logo.png";
const { Header, Sider, Content } = Layout

const siderStyle = {
  overflow: "auto",
  height: "100vh",
  position: "sticky",
  insetInlineStart: 0,
  top: 0,
  bottom: 0,
  scrollbarWidth: "thin",
  scrollbarGutter: "stable",
  minWidth: "210px",
}

const AppLayout = () => {
  const [collapsed, setCollapsed] = useState(false)
  const {
    token: { colorBgContainer, borderRadiusLG },
  } = theme.useToken()

  // const username = localStorage.getItem("user")
  const storedUser = JSON.parse(localStorage.getItem("user"))
  const userRole = storedUser?.role || "" // Get user role, default to empty if null

  const [menuItems, setMenuItems] = useState([])
  const navigate = useNavigate()

  useEffect(() => {
    const baseMenuItems = [
      {
        key: "1",
        icon: <MdDashboard style={{ color: "white" }} />,
        defaultSelectedKeys: ["1"],
        label: (
          <Link to="/sales/dashboard" style={{ color: "white" }}>
            Dashboard{" "}
          </Link>
        ),
        style: {
          border: "1px solid gray",
          marginBottom: "20px ",
          padding: !collapsed ? "15px 20px" : "",
          borderRadius: "10px",
          color: "white",
          background: "#52525233",
        },
      },  
      //  {
      //   key: "3",
      //   icon: <AiOutlinePlus />,
      //   defaultSelectedKeys: ["3"],
      //   label: (
      //     <Link to="/create-order" className=" text-[15px]">
      //       Create Order
      //     </Link>
      //   ),
      //   style: {
      //     border: "1px solid gray",
      //     marginBottom: "20px ",
      //     padding: !collapsed ? "15px 20px" : "",
      //     borderRadius: "10px",
      //     color: "white",
      //     background: "#52525233",
      //   },
      // },
      {
        key: "2",
        icon: <ShoppingOutlined />,
        defaultSelectedKeys: ["2"],
        label: (
          <Link to="/order-list" className=" text-[15px]">
            Order List
          </Link>
        ),
        style: {
          border: "1px solid gray",
          marginBottom: "20px ",
          padding: !collapsed ? "15px 20px" : "",
          borderRadius: "10px",
          color: "white",
          background: "#52525233",
        },
      },
   
      {
        key: "4",
        icon: <FolderOutlined />,
        defaultSelectedKeys: ["4"],
        label: (
          <Link to="/products/all" className=" text-[15px]">
            Products
          </Link>
        ),
        style: {
          border: "1px solid gray",
          marginBottom: "20px ",
          padding: !collapsed ? "15px 20px" : "",
          borderRadius: "10px",
          color: "white",
          background: "#52525233",
        },
      },
     
    ]

    if (userRole === "SALE") {
      baseMenuItems.splice(1, 0, {
        key: "3",
        icon: <AiOutlinePlus />,
        defaultSelectedKeys: ["3"],
        label: (
          <Link to="/create-order" className=" text-[15px]">
            Create Order
          </Link>
        ),
        style: {
          border: "1px solid gray",
          marginBottom: "20px ",
          padding: !collapsed ? "15px 20px" : "",
          borderRadius: "10px",
          color: "white",
          background: "#52525233",
        },
      })
    }

    // Add Assign Truck menu item only for warehouse users
    if (userRole === "WAREHOUSE") {
      baseMenuItems.splice(3, 0, {
        key: "5",
        icon: <TruckOutlined />,
        defaultSelectedKeys: ["5"],
        label: (
          <Link to="/assign/truck" className=" text-[15px]">
            Assign Truck
          </Link>
        ),
        style: {
          border: "1px solid gray",
          marginBottom: "20px ",
          padding: !collapsed ? "15px 20px" : "",
          borderRadius: "10px",
          color: "white",
          background: "#52525233",
        },
      },
      // {
      //   key: "6",
      //   icon: <TruckOutlined />,
      //   defaultSelectedKeys: ["6"],
      //   label: (
      //     <Link to="/drivers" className=" text-[15px]">
      //       Driver
      //     </Link>
      //   ),
      //   style: {
      //     border: "1px solid gray",
      //     marginBottom: "20px ",
      //     padding: !collapsed ? "15px 20px" : "",
      //     borderRadius: "10px",
      //     color: "white",
      //     background: "#52525233",
      //   },
      // },
    
    )
    }

    setMenuItems(baseMenuItems)
  }, [userRole, collapsed])

  const handleLogout = async () =>{

   

    try {
        const token = localStorage.getItem('token')

    if(token){
        await axios.post('/auth/logout',
            {},
            // {
            //     headers: {
            //         // Authorization: `Bearer ${token}` 
            //     }
            // }

        );            
    }
  
        // Redirect to the login page (or home)
        navigate('/login'); 
      } catch (error) {
        console.error("Logout failed: ", error);
      }
}


  return (
    <Layout className="min-h-screen ">
      <Sider className="relative w-[100%] bg-dark " trigger={null} collapsible collapsed={collapsed} style={siderStyle}>
        <div className="demo-logo-vertical" />
        {collapsed ? (
          <div className="mx-[1.5rem] mt-5 h-[50px] w-[100%]">
            <h2 className={` z-10 text-2xl font-bold bg-gradient-purple bg-clip-text text-transparent`}>MT</h2>
          </div>
        ) : (
          <div className=" mt-5 h-[50px]">
            <h2 className={` text-center w-[100%] z-10 text-2xl font-bold bg-gradient-purple bg-clip-text text-transparent`}>
              Myan Tech
            </h2>
          </div>
        )}
        <Menu
          theme="dark"
          mode="inline"
          className="mt-[2rem] bg-dark  hover:bg-none   px-2 "
          type="primary"
          items={menuItems}
        />
      </Sider>
      <Layout>
        <Header
          style={{
            padding: 0,
            background: "#1C1C25",
            position: "sticky",
            top: 0,
            zIndex: 1000,
          }}
          className="flex justify-between w-full"
        >
          <div className="flex items-center">
            <Button
              type="text"
              icon={collapsed ? <MenuUnfoldOutlined /> : <MenuFoldOutlined />}
              onClick={() => setCollapsed(!collapsed)}
              style={{
                fontSize: "16px",
                width: 64,
                height: 64,
                color: "white",
              }}
            />
            <h2 className="text-2xl font-semibold text-transparent bg-gradient-purple bg-clip-text">
              {
                userRole == 'WAREHOUSE' ? 'Warehouse Department' : 
                userRole == 'SALE' ? 'Sales Department':
                userRole == 'FINANCE' ? 'Finance Department': ''
                
              }
           
                </h2>
          </div>
          <div className="mr-[3rem]">
            <Button onClick={handleLogout} className="mr-[8px] h-10 rounded-xl mt-3 bg-button px-[25px] hover:bg-none text-white">
              Logout
              <LogoutOutlined />
            </Button>
           
          </div>
        </Header>
        <Content
          style={{
            margin: "24px 16px",
            padding: 24,
            minHeight: 280,
            background: colorBgContainer,
            borderRadius: borderRadiusLG,
          }}
        >
          <Outlet />
        </Content>
      </Layout>
    </Layout>
  )
}

export default AppLayout