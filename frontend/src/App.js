import { BrowserRouter as Router, Route, Routes, Navigate } from 'react-router-dom';
import { useState, useEffect, useContext } from 'react';
import LoginPage from './pages/LoginPage';
import EmployeePage from './pages/EmployeePage';
import EditAdminPage from './pages/EditAdminPage';
import Navigation from './components/Navigation'; // Make sure to import the Navigation component
import { GlobalContext } from './contexts/GlobalContext';

const App = () => {
    const [user, setUser] = useState(null);
    const { globalState, addItem, removeItem, updateItem } = useContext(GlobalContext);
    useEffect(() => {
        const storedUser = localStorage.getItem('user');
        const token = localStorage.getItem('token');
        if (storedUser) {
            setUser(JSON.parse(storedUser));
        }

        console.log(globalState);
        console.log(localStorage.getItem('user'));
    }, []);

    const handleLogin = (user) => {
        setUser(user);
        localStorage.setItem('user', JSON.stringify(user));
        window.location.reload();
    };

    const handleLogout = () => {
        setUser(null);
        localStorage.removeItem('user');
        window.location.reload();
        // addItem(localStorage.getItem('user'));
    };

    return (
        <Router>
            <Navigation user={user} onLogout={handleLogout} />
            <Routes>
                <Route
                    path="/"
                    element={user ? <Navigate to="/employees" /> : <LoginPage onLogin={handleLogin} />}
                />
                <Route
                    path="/login"
                    element={user ? <Navigate to="/employees" /> : <LoginPage onLogin={handleLogin} />}
                />
                <Route
                    path="/employees/*"
                    element={user ? <EmployeePage /> : <Navigate to="/login" />}
                />
                <Route
                    path="/admin/edit"
                    element={user ? <EditAdminPage /> : <Navigate to="/login" />}
                />
            </Routes>
        </Router>
    );
};

export default App;
